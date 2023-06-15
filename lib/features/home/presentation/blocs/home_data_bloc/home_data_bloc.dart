import 'dart:async';
import 'dart:developer';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/home/domain/entities/filter_settings/filter_settings.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_filtered_events.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_new_events.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_this_week_events.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../../shared/domain/entities/event/event.dart';

part 'home_data_event.dart';
part 'home_data_state.dart';
part 'home_data_bloc.freezed.dart';

const _batchSize = 8;

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final GetNewEvents _getNewEventsCase;
  final GetThisWeekEvents _getThisWeekEventsCase;
  final GetFilteredEvents _getFilteredEventsCase;

  late final StreamSubscription _profileInitializationBlocSubscription;
  HomeDataBloc({required ProfileInitializationBloc profileInitializationBloc,
    required GetThisWeekEvents getThisWeekEventsCase,
    required GetFilteredEvents getFilteredEventsCase,
    required GetNewEvents getNewEventsCase}) :
        _getThisWeekEventsCase = getThisWeekEventsCase,
        _getNewEventsCase = getNewEventsCase,
        _getFilteredEventsCase = getFilteredEventsCase,
        super(const HomeDataState.initial()) {
    _profileInitializationBlocSubscription = profileInitializationBloc.stream.listen((event) {
      event.maybeMap(
          initialized: (_){
            add(const HomeDataEvent.fetchHomeData());
          },
          orElse: (){});
    });
    on<HomeDataEvent>(_mapEventDetailsToState, transformer: droppable());
  }

  Future<void> _mapEventDetailsToState(HomeDataEvent event, Emitter<HomeDataState> emit) => event.map(
      fetchHomeData: (e) => _fetchHomeData(e, emit),
      applyFilters: (e) => _applyFilters(e, emit),
      cleanFilters: (e) => _cleanFilters(e, emit),
      searchQueryChanged: (e) => _searchQueryChanged(e, emit),
      selectStartDate: (e) => _selectStartDate(e, emit),
      selectEndDate: (e) => _selectEndDate(e, emit),
      selectCategory: (e) => _selectCategory(e, emit),
      selectRequest: (e) => _selectRequest(e, emit),
      loadMoreFilteredEvents: (e) => _loadMoreFilteredEvents(e, emit),
      loadMoreNewEvents: (e) => _loadMoreNewEvents(e, emit),
      loadMoreWeekEvents: (e) => _loadMoreWeekEvents(e, emit)
  );

  Future<void> _loadMoreFilteredEvents(_LoadMoreFilteredEventsEvent event, Emitter<HomeDataState> emit) async{
    if(!state.isFiltered || state.filteredEvents!.isEmpty){
      return;
    }

    final failOrEvents = await _getFilteredEventsCase.execute(GetFilteredEventsParams(filterSettings: state.filterSettings, lastLoadedEvent: state.filteredEvents!.last.eventModel, take: _batchSize));
    failOrEvents.fold((_){}, (r){
      emit(HomeDataState.filtered(filterSettings: state.filterSettings!, foundEvents: [...?state.filteredEvents, ...r]));
    });
  }

  Future<void> _loadMoreNewEvents(_LoadMoreNewEventsEvent event, Emitter<HomeDataState> emit) async{
    if(state.isFiltered){
      return;
    }
    final failOrEvents = await _getNewEventsCase.execute(GetNewEventsParams(lastLoadedEvent: state.newEvents!.last.eventModel, take: _batchSize));
    failOrEvents.fold((_){}, (r){
      emit(HomeDataState.loaded(filterSettings: state.filterSettings!, newEvents: [...state.newEvents!, ...r], thisWeekEvents: state.thisWeekEvents ?? []));
    });
  }

  Future<void> _loadMoreWeekEvents(_LoadMoreWeekEventsEvent event, Emitter<HomeDataState> emit) async{
    if(state.isFiltered){
      return;
    }

    final failOrEvents = await _getThisWeekEventsCase.execute(GetThisWeekEventsParams(lastLoadedEvent: state.thisWeekEvents!.last.eventModel, take: _batchSize));
    failOrEvents.fold((_){}, (r){
      emit(HomeDataState.loaded(filterSettings: state.filterSettings!, newEvents: state.newEvents ?? [], thisWeekEvents: [...state.thisWeekEvents!, ...r]));
    });
  }

  Future<void> _selectRequest(_SelectRequestEvent event, Emitter<HomeDataState> emit) async{
    bool? requestRequired = event.required;
    if(requestRequired == state.filterSettings?.requestRequired){
      requestRequired = null;
    }
    final filterSettings = FilterSettings(requestRequired: requestRequired).copyWith.call(maxDate: state.filterSettings?.maxDate, category: state.filterSettings?.category == null ? null : EventMusics.fromString(state.filterSettings!.category!.name), minDate: state.filterSettings?.minDate, searchQuery: state.filterSettings?.searchQuery ?? '');
    emit(state.changeFilterSettings(filterSettings));
  }

  Future<void> _cleanFilters(_CleanFiltersEvent event, Emitter<HomeDataState> emit) async{
    add(const HomeDataEvent.fetchHomeData());
  }

  Future<void> _applyFilters(_ApplyFiltersEvent event, Emitter<HomeDataState> emit) async{
    if(!state.filterSettings!.hasFilters){
      add(const HomeDataEvent.fetchHomeData());
    }else{
      final failOrEvents = await _getFilteredEventsCase.execute(GetFilteredEventsParams(filterSettings: state.filterSettings, take: _batchSize));
      emit(HomeDataState.loading(filterSettings: state.filterSettings));
      failOrEvents.fold((l){
        emit(HomeDataState.error(failure: l));
      }, (r){
        emit(HomeDataState.filtered(filterSettings: state.filterSettings!, foundEvents: r));
      });
    }
  }

  Future<void> _selectCategory(_SelectCategoryEvent event, Emitter<HomeDataState> emit) async{
    String? selectedCategory = event.selectCategory;
    if(selectedCategory == state.filterSettings?.category?.name){
      selectedCategory = null;
    }
    final filterSettings = FilterSettings(category: selectedCategory == null ? null : EventMusics.fromString(selectedCategory)).copyWith.call(maxDate: state.filterSettings?.maxDate, minDate: state.filterSettings?.minDate, requestRequired: state.filterSettings?.requestRequired, searchQuery: state.filterSettings?.searchQuery ?? '');
    emit(state.changeFilterSettings(filterSettings));
  }

  Future<void> _selectStartDate(_SelectStartDateEvent event, Emitter<HomeDataState> emit) async{
    final filterSettings = FilterSettings(minDate: event.minDate).copyWith.call(category: state.filterSettings?.category, requestRequired: state.filterSettings?.requestRequired, maxDate: state.filterSettings?.maxDate);
    emit(state.changeFilterSettings(filterSettings));
  }

  Future<void> _selectEndDate(_SelectEndDateEvent event, Emitter<HomeDataState> emit) async{
    final filterSettings = FilterSettings(maxDate: event.maxDate).copyWith.call(category: state.filterSettings?.category, requestRequired: state.filterSettings?.requestRequired, minDate: state.filterSettings?.minDate);
    emit(state.changeFilterSettings(filterSettings));
  }

  Future<void> _searchQueryChanged(_SearchQueryChangedEvent event, Emitter<HomeDataState> emit) async{
    final searchQuery = event.searchQuery;
    final filterSettings = FilterSettings(searchQuery: searchQuery).copyWith.call(category: state.filterSettings?.category, requestRequired: state.filterSettings?.requestRequired);
    emit(state.changeFilterSettings(filterSettings));
    add(HomeDataEvent.applyFilters());
  }

  Future<void> _fetchHomeData(_FetchHomeDataEvent event, Emitter<HomeDataState> emit) async{
    final failOrEvents = await _getNewEventsCase.execute(GetNewEventsParams(take: _batchSize));
    final failOrThisWeekEvents = await _getThisWeekEventsCase.execute(GetThisWeekEventsParams(take: _batchSize));
    emit(const HomeDataState.loading());
    failOrEvents.fold((l){
      emit(HomeDataState.error(failure: l));
    }, (r1){
      failOrThisWeekEvents.fold((l){
        emit(HomeDataState.error(failure: l));
      }, (r2){
        emit(HomeDataState.loaded(newEvents: r1, thisWeekEvents: r2, filterSettings: FilterSettings()));
      });
    });
  }

  @override
  Future<void> close() {
    _profileInitializationBlocSubscription.cancel();
    return super.close();
  }
}
