import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';

import '../repositories/event_repository_contract.dart';

class RemoveAllTickets implements VoidUseCase<RemoveAllTicketsParams>{
  final EventRepository eventRepository;

  @override
  Future<Failure?> execute(RemoveAllTicketsParams params) {
    return eventRepository.removeAllTickets(eventUid: params.eventUid);
  }

  const RemoveAllTickets({
    required this.eventRepository,
  });
}

class RemoveAllTicketsParams{
  final String eventUid;
  RemoveAllTicketsParams({required this.eventUid});
}