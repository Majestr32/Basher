part of 'event_details_bloc.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const EventDetailsState._();

  bool get isLoaded => maybeMap(
      loaded: (_) => true,
      error: (_) => true,
      orElse: () => false);

  bool get isError => maybeMap(
      error: (_) => true,
      orElse: () => false);

  String? get error => maybeMap(
      error: (state) => state.error,
      orElse: () => null);

  EventDetailed? get eventDetails => maybeMap(
      loaded: (state) => state.event,
      sentRequest: (state) => state.event,
      orElse: () => null);

  String? get userUid => maybeMap(
    initial: (state) => state.userUid,
    loaded: (state) => state.userUid,
    sentRequest: (state) => state.userUid,
    orElse: () => null
  );

  UserToEventMetadata? get metadata => maybeMap(
      loaded: (state) => state.metadata,
      sentRequest: (state) => state.metadata,
      orElse: () => null);

  const factory EventDetailsState.initial({required String userUid, required Event event}) = _InitialState;
  const factory EventDetailsState.sentRequest({required String userUid, required EventDetailed event, required UserToEventMetadata metadata}) = _SentRequestState;
  const factory EventDetailsState.loaded({required String userUid, required EventDetailed event, required UserToEventMetadata metadata}) = _LoadedState;
  const factory EventDetailsState.error({required Failure failure}) = _ErrorState;

}
