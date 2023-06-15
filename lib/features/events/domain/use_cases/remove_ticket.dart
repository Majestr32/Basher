

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';
import '../repositories/event_repository_contract.dart';

class RemoveTicket implements UseCase<Ticket, RemoveTicketParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure, Ticket>> execute(RemoveTicketParams params) {
    return eventRepository.removeTicket(ticket: params.ticket, eventUid: params.eventUid);
  }

  const RemoveTicket({
    required this.eventRepository,
  });
}

class RemoveTicketParams{
  final String eventUid;
  final Ticket ticket;
  RemoveTicketParams({required this.eventUid, required this.ticket});
}