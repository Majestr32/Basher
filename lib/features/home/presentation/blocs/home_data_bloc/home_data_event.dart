part of 'home_data_bloc.dart';

@freezed
class HomeDataEvent with _$HomeDataEvent {
  const factory HomeDataEvent.fetchHomeData() = _FetchHomeDataEvent;
  const factory HomeDataEvent.applyFilters() = _ApplyFiltersEvent;
  const factory HomeDataEvent.loadMoreWeekEvents() = _LoadMoreWeekEventsEvent;
  const factory HomeDataEvent.loadMoreNewEvents() = _LoadMoreNewEventsEvent;
  const factory HomeDataEvent.loadMoreFilteredEvents() = _LoadMoreFilteredEventsEvent;
  const factory HomeDataEvent.searchQueryChanged({required String searchQuery}) = _SearchQueryChangedEvent;
  const factory HomeDataEvent.selectStartDate({required DateTime minDate}) = _SelectStartDateEvent;
  const factory HomeDataEvent.selectEndDate({required DateTime maxDate}) = _SelectEndDateEvent;
  const factory HomeDataEvent.selectRequest({required bool? required}) = _SelectRequestEvent;
  const factory HomeDataEvent.selectCategory({required String? selectCategory}) = _SelectCategoryEvent;
  const factory HomeDataEvent.cleanFilters() = _CleanFiltersEvent;
}
