import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/map/data/data_sources/remote/map_events_service_contract.dart';
import 'package:allxclusive/features/map/domain/repositories/map_event_repository_contract.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:dartz/dartz.dart';

class MapEventRepositoryImpl implements MapEventRepository{
  final MapEventsService _mapEventsService;
  @override
  Future<Either<Failure, List<Event>>> getEventsOnMap() async{
    try{
      return Right(await _mapEventsService.getEventsOnMap());
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Event>> getSelectedEvent({required EventModel event}) async{
    try{
      return Right(await _mapEventsService.getSelectedEvent(event: event));
    }on Failure catch(e){
    return Left(e);
    }
  }

  const MapEventRepositoryImpl({
    required MapEventsService mapEventsService,
  }) : _mapEventsService = mapEventsService;

}