import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/events/domain/use_cases/delete_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/edit_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/publish_event.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/ticket/ticket.dart';
import '../../../domain/use_cases/create_event.dart';
import '../../../domain/use_cases/get_organiser_events.dart';

part 'user_events_event.dart';
part 'user_events_state.dart';
part 'user_events_bloc.freezed.dart';

class UserEventsBloc extends Bloc<UserEventsEvent, UserEventsState> {
  final ProfileInitializationBloc _profileInitializationBloc;
  final CreateEvent _createEventCase;
  final EditEvent _editEventCase;
  final GetOrganiserEvents _getOrganiserEventsCase;
  final PublishEvent _publishEventCase;
  final DeleteEvent _deleteEventCase;

  late final StreamSubscription _profileInitializationSubscription;

  UserEventsBloc({
    required CreateEvent createEventCase,
    required ProfileInitializationBloc profileInitializationBloc,
    required GetOrganiserEvents getOrganiserEventsCase,
    required EditEvent editEventCase,
    required PublishEvent publishEventCase,
    required DeleteEvent deleteEventCase,
  }) : _createEventCase = createEventCase,
        _getOrganiserEventsCase = getOrganiserEventsCase,
        _profileInitializationBloc = profileInitializationBloc,
        _editEventCase = editEventCase,
        _publishEventCase = publishEventCase,
        _deleteEventCase = deleteEventCase,
        super(const UserEventsState.initial()) {
    _profileInitializationSubscription = _profileInitializationBloc.stream.distinct((prev,next) => prev.user == next.user).listen((event) {
      if(event.user == null){
        add(const UserEventsEvent.reset());
      }else{
        add(UserEventsEvent.fetchUserEvents(organiserUid: event.user!.uid));
      }
    });
    on<UserEventsEvent>(_mapUserEventsToState);
  }

  Future<void> _mapUserEventsToState(UserEventsEvent event, Emitter<UserEventsState> emit) => event.map(
      fetchUserEvents: (e) => _fetchUserEvents(e, emit),
    createEvent: (e) => _createEvent(e,emit),
    reset: (e) => _reset(e, emit),
    updateEvent: (e) => _updateEvent(e, emit),
    publishEvent: (e) => _publishEvent(e, emit),
    deleteEvent: (e) => _deleteEvent(e, emit)
  );

  Future<void> _publishEvent(_PublishEventEvent event, Emitter<UserEventsState> emit) async{
    final events = state.events;
    emit(const UserEventsState.loading());
    final failureOrEvent = await _publishEventCase.execute(PublishEventParams(event: event.event));
    failureOrEvent.fold((l){
      emit(UserEventsState.error(failure: l));
      emit(UserEventsState.loaded(events: events));
    }, (r){
      emit(UserEventsState.publishedEvent(event: r));
      emit(UserEventsState.loaded(events: events.map((e) => e.eventModel.uid == r.eventModel.uid ? r : e).toList()));
    });
  }

  Future<void> _deleteEvent(_DeleteEventEvent event, Emitter<UserEventsState> emit) async{
    final failure = await _deleteEventCase.execute(DeleteEventParams(eventUid: event.eventUid));
    if(failure == null){
      final newEvents = state.events.where((e) => event.eventUid != e.eventModel.uid).toList();
      emit(UserEventsState.deletedEvent(events: newEvents));
      emit(UserEventsState.loaded(events: newEvents));
    }
  }

  Future<void> _updateEvent(_UpdateEventEvent event, Emitter<UserEventsState> emit) async{
    final events = state.events;
    emit(const UserEventsState.loading());
    final failureOrEvent = await _editEventCase.execute(EditEventParams(event: event.event.eventModel, imgPath: event.imgPath));
    failureOrEvent.fold((l){
      emit(UserEventsState.error(failure: l));
      emit(UserEventsState.loaded(events: events));
    }, (r){
      emit(UserEventsState.updatedEvent(event: r));
      emit(UserEventsState.loaded(events: events.map((e) => e.eventModel.uid == r.eventModel.uid ? r : e).toList()));
    });
  }

  Future<void> _createEvent(_CreateEventEvent event, Emitter<UserEventsState> emit) async{
    final events = state.events;
    emit(const UserEventsState.loading());
    final failureOrEvent = await _createEventCase.execute(CreateEventParams(event: event.event.eventModel, imgPath: event.imgPath));
    failureOrEvent.fold((l){
      emit(UserEventsState.error(failure: l));
      emit(UserEventsState.loaded(events: events));
    }, (r){
      emit(UserEventsState.addedEvent(event: r));
      emit(UserEventsState.loaded(events: [r,...events]));
    });
  }

  Future<void> _reset(_ResetEvent event, Emitter<UserEventsState> emit) async{
    emit(const UserEventsState.initial());
  }

  Future<void> _fetchUserEvents(_FetchUserEventsEvent event, Emitter<UserEventsState> emit) async{
    final failureOrEvents = await _getOrganiserEventsCase.execute(GetOrganiserEventsParams(organiserUid: event.organiserUid));
    failureOrEvents.fold((l){
      emit(UserEventsState.error(failure: l));
    }, (r){
      emit(UserEventsState.loaded(events: r));
    });
    return;
  }

  @override
  Future<void> close() {
    _profileInitializationSubscription.cancel();
    return super.close();
  }
}
