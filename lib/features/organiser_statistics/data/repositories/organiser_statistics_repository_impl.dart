import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/organiser_statistics/data/data_sources/remote/organiser_statistics_service_contract.dart';
import 'package:allxclusive/features/organiser_statistics/domain/entities/statistics_report/statistics_report.dart';
import 'package:allxclusive/features/organiser_statistics/domain/repositories/organiser_statistics_repository_contract.dart';
import 'package:dartz/dartz.dart';

class OrganiserStatisticsRepositoryImpl implements OrganiserStatisticsRepository{
  final OrganiserStatisticsService _organiserStatisticsService;

  @override
  Future<Either<Failure, StatisticsReport>> getStatisticsReport({required String userUid}) async{
    try{
      return Right(await _organiserStatisticsService.getStatisticsReport(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  const OrganiserStatisticsRepositoryImpl({
    required OrganiserStatisticsService organiserStatisticsService,
  }) : _organiserStatisticsService = organiserStatisticsService;
}