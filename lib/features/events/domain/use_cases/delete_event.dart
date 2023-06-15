import 'package:allxclusive/core/usecases/void_use_case.dart';

import '../../../../core/error/failure.dart';
import '../repositories/event_repository_contract.dart';

class DeleteEvent implements VoidUseCase<DeleteEventParams>{
  final EventRepository eventRepository;

  @override
  Future<Failure?> execute(DeleteEventParams params) {
    return eventRepository.deleteEvent(eventUid: params.eventUid);
  }

  const DeleteEvent({
    required this.eventRepository,
  });
}

class DeleteEventParams{
  final String eventUid;
  DeleteEventParams({required this.eventUid});
}