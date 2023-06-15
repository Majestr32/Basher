part of 'map_events_bloc.dart';

@freezed
class MapEventsEvent with _$MapEventsEvent {
  const factory MapEventsEvent.fetchEvents() = _FetchEventsEvent;
  const factory MapEventsEvent.selectEvent({required Event? event}) = _SelectEventEvent;
}
