

import 'package:allxclusive/features/home/domain/repositories/home_data_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';

class GetNewEvents implements UseCase<List<Event>, GetNewEventsParams>{
  final HomeDataRepository homeDataRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetNewEventsParams params) {
    return homeDataRepository.getNewEvents(lastLoadedEvent: params.lastLoadedEvent, take: params.take);
  }

  const GetNewEvents({
    required this.homeDataRepository,
  });
}

class GetNewEventsParams{
  final EventModel? lastLoadedEvent;
  final int? take;
  GetNewEventsParams({this.lastLoadedEvent, this.take});
}