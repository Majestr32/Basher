

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../repositories/event_repository_contract.dart';

class PublishEvent implements UseCase<Event,PublishEventParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure,Event>> execute(PublishEventParams params) {
    return eventRepository.publishEvent(event: params.event);
  }

  const PublishEvent({
    required this.eventRepository,
  });
}

class PublishEventParams{
  final Event event;
  PublishEventParams({required this.event});
}