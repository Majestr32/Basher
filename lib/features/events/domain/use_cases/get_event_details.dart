import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../repositories/event_repository_contract.dart';

class GetEventDetails implements UseCase<EventDetailed, GetEventDetailsParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure, EventDetailed>> execute(GetEventDetailsParams params) {
    return eventRepository.getEventDetails(event: params.event);
  }

  const GetEventDetails({
    required this.eventRepository,
  });
}

class GetEventDetailsParams{
  final Event event;
  GetEventDetailsParams({required this.event});
}