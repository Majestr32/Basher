import '../../../domain/entities/statistics_report/statistics_report.dart';

abstract class OrganiserStatisticsService{
  Future<StatisticsReport> getStatisticsReport({required String userUid});
}