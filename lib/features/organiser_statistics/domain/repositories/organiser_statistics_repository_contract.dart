import 'package:allxclusive/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/statistics_report/statistics_report.dart';

abstract class OrganiserStatisticsRepository{
  Future<Either<Failure, StatisticsReport>> getStatisticsReport({required String userUid});
}