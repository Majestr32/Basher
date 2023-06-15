part of 'home_data_bloc.dart';

@freezed
class HomeDataState with _$HomeDataState {
  const HomeDataState._();

  bool get isLoaded => maybeMap(
      loaded: (_) => true,
      filtered: (_) => true,
      orElse: () => false);

  List<Event>? get newEvents => maybeMap(
    loaded: (state) => state.newEvents,
    orElse: () => null);

  List<Event>? get thisWeekEvents => maybeMap(
      loaded: (state) => state.thisWeekEvents,
      orElse: () => null);

  List<Event>? get filteredEvents => maybeMap(
      filtered: (state) => state.foundEvents,
      orElse: () => null);

  bool get isFiltered => maybeMap(
      filtered: (_) => true,
      orElse: () => false);

  HomeDataState changeFilterSettings(FilterSettings filterSettings) => maybeMap(
      loaded: (state) => state.copyWith.call(filterSettings: filterSettings),
      filtered: (state) => state.copyWith.call(filterSettings: filterSettings),
      orElse: () => this);

  FilterSettings? get filterSettings => maybeMap(
      filtered: (state) => state.filterSettings,
      loaded: (state) => state.filterSettings,
      loading: (state) => state.filterSettings,
      orElse: () => null);

  const factory HomeDataState.initial() = _InitialState;
  const factory HomeDataState.loaded({required List<Event> newEvents, required List<Event> thisWeekEvents, required FilterSettings filterSettings}) = _LoadedState;
  const factory HomeDataState.loading({FilterSettings? filterSettings}) = _LoadingState;
  const factory HomeDataState.filtered({required FilterSettings filterSettings, required List<Event> foundEvents}) = _FilteredState;
  const factory HomeDataState.error({required Failure failure}) = _ErrorState;
}
