

import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';

class GetOrganiserEvents implements UseCase<List<Event>, GetOrganiserEventsParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetOrganiserEventsParams params) {
    return eventRepository.getOrganiserEvents(organiserUid: params.organiserUid);
  }

  const GetOrganiserEvents({
    required this.eventRepository,
  });
}

class GetOrganiserEventsParams{
  final String organiserUid;
  GetOrganiserEventsParams({required this.organiserUid});
}