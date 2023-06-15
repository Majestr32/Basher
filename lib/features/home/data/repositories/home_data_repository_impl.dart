import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/home/data/data_sources/remote/home_data_service_contract.dart';
import 'package:allxclusive/features/home/domain/entities/filter_settings/filter_settings.dart';
import 'package:allxclusive/features/home/domain/repositories/home_data_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';

class HomeDataRepositoryImpl implements HomeDataRepository{
  final HomeDataService _homeDataService;

  @override
  Future<Either<Failure, List<Event>>> getNewEvents({EventModel? lastLoadedEvent, int? take}) async{
    try{
      return Right(await _homeDataService.getNewEvents(lastLoadedEvent: lastLoadedEvent, take: take));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure,List<Event>>> getThisWeekEvents({EventModel? lastLoadedEvent, int? take}) async{
    try{
      return Right(await _homeDataService.getThisWeekEvents(lastLoadedEvent: lastLoadedEvent, take: take));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<Event>>> getFilteredEvents({required FilterSettings? filterSettings, EventModel? lastLoadedEvent, int? take}) async{
    try{
      return Right(await _homeDataService.getFilteredEvents(filterSettings: filterSettings, lastLoadedEvent: lastLoadedEvent, take: take));
    }on Failure catch(e){
      return Left(e);
    }
  }

  const HomeDataRepositoryImpl({
    required HomeDataService homeDataService,
  }) : _homeDataService = homeDataService;

}