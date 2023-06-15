part of 'user_events_bloc.dart';

@freezed
class UserEventsState with _$UserEventsState {
  const UserEventsState._();

  List<Event> get events => maybeMap(
      loaded: (state) => state.events,
      deletedEvent: (state) => state.events,
      orElse: () => []);

  bool get isLoading => maybeMap(
    loading: (_) => true,
      orElse: () => false);

  const factory UserEventsState.initial() = _InitialState;
  const factory UserEventsState.loading() = _LoadingState;
  const factory UserEventsState.loaded({required List<Event> events}) = _LoadedState;
  const factory UserEventsState.addedEvent({required Event event}) = _AddedEventState;
  const factory UserEventsState.publishedEvent({required Event event}) = _PublishedEventState;
  const factory UserEventsState.updatedEvent({required Event event}) = _UpdatedEventState;
  const factory UserEventsState.addedTicket({required Ticket ticket}) = _AddedTicketState;
  const factory UserEventsState.deletedEvent({required List<Event> events}) = _DeletedEventState;
  const factory UserEventsState.error({required Failure failure}) = _ErrorState;
}
