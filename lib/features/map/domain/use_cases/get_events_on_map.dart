import 'package:allxclusive/features/map/domain/repositories/map_event_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';

class GetEventsOnMap implements UseCase<List<Event>, GetEventsOnMapParams>{
  final MapEventRepository mapEventRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetEventsOnMapParams params) {
    return mapEventRepository.getEventsOnMap();
  }

  const GetEventsOnMap({
    required this.mapEventRepository,
  });
}

class GetEventsOnMapParams{
}