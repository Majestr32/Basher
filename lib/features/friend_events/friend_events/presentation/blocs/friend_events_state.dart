part of 'friend_events_bloc.dart';

@freezed
class FriendEventsState with _$FriendEventsState {
  const FriendEventsState._();

  List<Event>? get events => maybeMap(
      loaded: (state) => state.events,
      orElse: () => null);

  bool get hasEvents => maybeMap(
      loaded: (_) => true,
      orElse: () => false);

  const factory FriendEventsState.initial() = _InitialState;
  const factory FriendEventsState.loaded({required List<Event> events}) = _LoadedState;
}
