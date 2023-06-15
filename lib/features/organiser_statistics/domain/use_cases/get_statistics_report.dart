import 'package:allxclusive/features/map/domain/repositories/map_event_repository_contract.dart';
import 'package:allxclusive/features/organiser_statistics/domain/entities/statistics_report/statistics_report.dart';
import 'package:allxclusive/features/organiser_statistics/domain/repositories/organiser_statistics_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';

class GetStatisticsReport implements UseCase<StatisticsReport, GetStatisticsReportParams>{
  final OrganiserStatisticsRepository organiserStatisticsRepository;

  @override
  Future<Either<Failure, StatisticsReport>> execute(GetStatisticsReportParams params) {
    return organiserStatisticsRepository.getStatisticsReport(userUid: params.userUid);
  }

  const GetStatisticsReport({
    required this.organiserStatisticsRepository,
  });
}

class GetStatisticsReportParams{
  final String userUid;

  const GetStatisticsReportParams({
    required this.userUid,
  });
}