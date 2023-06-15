part of 'map_events_bloc.dart';

@freezed
class MapEventsState with _$MapEventsState {
  const MapEventsState._();

  List<Event>? get events => maybeMap(
      loaded: (state) => state.events,
      orElse: () => null);

  Event? get selectedEvent => maybeMap(
      loaded: (state) => state.selectedEvent,
      orElse: () => null);

  Event? findByName({required String query}) {
    if(events == null){
      return null;
    }
    final foundEvents = events!.where((element) => element.eventModel.location.toLowerCase().contains(query.toLowerCase()));
    if(foundEvents.isEmpty){
      return null;
    }else{
      return foundEvents.first;
    }
  }

  const factory MapEventsState.initial() = _InitialState;
  const factory MapEventsState.loaded({required List<Event> events, Event? selectedEvent}) = _LoadedState;
}
