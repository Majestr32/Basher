part of 'friend_events_bloc.dart';

@freezed
class FriendEventsEvent with _$FriendEventsEvent {
  const factory FriendEventsEvent.fetchFriendEvents({required String friendUid}) = _FetchFriendEventsEvent;
}
