import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/domain/entities/event/event.dart';
import '../../domain/use_cases/get_events_on_map.dart';
import '../../domain/use_cases/get_selected_event.dart';

part 'map_events_event.dart';
part 'map_events_state.dart';
part 'map_events_bloc.freezed.dart';

class MapEventsBloc extends Bloc<MapEventsEvent, MapEventsState> {
  final GetEventsOnMap _getEventsOnMap;
  final GetSelectedEvent _getSelectedEvent;
  MapEventsBloc({
    required GetEventsOnMap getEventsOnMap,
    required GetSelectedEvent getSelectedEvent
  }) :
        _getEventsOnMap = getEventsOnMap,
        _getSelectedEvent = getSelectedEvent,
        super(const MapEventsState.initial()) {
    on<MapEventsEvent>(_mapMapEventsToState, transformer: droppable());
  }

  Future<void> _mapMapEventsToState(MapEventsEvent event, Emitter<MapEventsState> emit) => event.map(
      fetchEvents: (e) => _fetchEvents(e,emit),
      selectEvent: (e) => _selectEvent(e, emit));

  Future<void> _fetchEvents(_FetchEventsEvent event, Emitter<MapEventsState> emit) async{
    final failureOrEvents = await _getEventsOnMap.execute(GetEventsOnMapParams());
    failureOrEvents.fold((l){
      emit(const MapEventsState.loaded(events: [], selectedEvent: null));
    }, (r){
      emit(MapEventsState.loaded(events: r));
    });
  }

  Future<void> _selectEvent(_SelectEventEvent event, Emitter<MapEventsState> emit) async{
    if(event.event == null){
      emit(MapEventsState.loaded(events: state.events!, selectedEvent: null));
    }else{
      final failureOrEvents = await _getSelectedEvent.execute(GetSelectedEventParams(event: event.event!.eventModel));
      failureOrEvents.fold((l){
        emit(MapEventsState.loaded(events: state.events!, selectedEvent: null));
      }, (r){
        emit(MapEventsState.loaded(events: state.events!, selectedEvent: r));
      });
    }
  }
}
