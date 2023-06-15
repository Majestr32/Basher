part of 'organiser_statistics_bloc.dart';

@freezed
class OrganiserStatisticsState with _$OrganiserStatisticsState {
  const OrganiserStatisticsState._();

  StatisticsReport? get report => maybeMap(
      loaded: (state) => state.report,
      orElse: () => null);

  const factory OrganiserStatisticsState.initial() = _InitialState;
  const factory OrganiserStatisticsState.loaded({required StatisticsReport report}) = _LoadedState;
}
