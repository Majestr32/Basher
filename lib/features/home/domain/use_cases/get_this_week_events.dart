

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../repositories/home_data_repository_contract.dart';

class GetThisWeekEvents implements UseCase<List<Event>, GetThisWeekEventsParams>{
  final HomeDataRepository homeDataRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetThisWeekEventsParams params) {
    return homeDataRepository.getThisWeekEvents(lastLoadedEvent: params.lastLoadedEvent, take: params.take);
  }

  const GetThisWeekEvents({
    required this.homeDataRepository,
  });
}

class GetThisWeekEventsParams{
  final EventModel? lastLoadedEvent;
  final int? take;
  GetThisWeekEventsParams({this.lastLoadedEvent, this.take});
}