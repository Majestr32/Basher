part of 'event_details_bloc.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const EventDetailsState._();

  bool get isLoaded => maybeMap(
      loaded: (_) => true,
      orElse: () => false);

  EventDetailed? get eventDetails => maybeMap(
      loaded: (state) => state.event,
      orElse: () => null);

  const factory EventDetailsState.initial({required Event event}) = _InitialState;
  const factory EventDetailsState.loaded({required EventDetailed event}) = _LoadedState;
  const factory EventDetailsState.error({required Failure failure}) = _ErrorState;

}
