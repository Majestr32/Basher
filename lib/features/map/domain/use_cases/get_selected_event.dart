
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/map_event_repository_contract.dart';

class GetSelectedEvent implements UseCase<Event, GetSelectedEventParams>{
  final MapEventRepository mapEventRepository;

  @override
  Future<Either<Failure, Event>> execute(GetSelectedEventParams params) {
    return mapEventRepository.getSelectedEvent(event: params.event);
  }

  const GetSelectedEvent({
    required this.mapEventRepository,
  });
}

class GetSelectedEventParams{
  final EventModel event;

  const GetSelectedEventParams({
    required this.event,
  });
}