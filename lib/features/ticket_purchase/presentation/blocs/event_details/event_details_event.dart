part of 'event_details_bloc.dart';

@freezed
class EventDetailsEvent with _$EventDetailsEvent {
  const factory EventDetailsEvent.loadDetails({required Event event}) = _LoadDetailsEvent;
  const factory EventDetailsEvent.sendJoinRequest({required JoinRequest joinRequest}) = _SendJoinRequestEvent;
}
