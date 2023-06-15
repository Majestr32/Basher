part of 'user_events_bloc.dart';

@freezed
class UserEventsEvent with _$UserEventsEvent {
  const factory UserEventsEvent.fetchUserEvents({required String organiserUid}) = _FetchUserEventsEvent;
  const factory UserEventsEvent.createEvent({required Event event, String? imgPath}) = _CreateEventEvent;
  const factory UserEventsEvent.publishEvent({required Event event}) = _PublishEventEvent;
  const factory UserEventsEvent.deleteEvent({required String eventUid}) = _DeleteEventEvent;
  const factory UserEventsEvent.updateEvent({required Event event, String? imgPath}) = _UpdateEventEvent;
  const factory UserEventsEvent.reset() = _ResetEvent;
}
