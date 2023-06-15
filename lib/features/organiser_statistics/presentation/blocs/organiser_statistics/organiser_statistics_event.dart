part of 'organiser_statistics_bloc.dart';

@freezed
class OrganiserStatisticsEvent with _$OrganiserStatisticsEvent {
  const factory OrganiserStatisticsEvent.fetchStatistics({required String userUid}) = _FetchStatisticsEvent;
}
