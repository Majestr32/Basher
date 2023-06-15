import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';
import '../repositories/event_repository_contract.dart';

class CreateTicket implements UseCase<Ticket, CreateTicketParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure, Ticket>> execute(CreateTicketParams params) {
    return eventRepository.createTicket(ticket: params.ticket, eventUid: params.eventUid);
  }

  const CreateTicket({
    required this.eventRepository,
  });
}

class CreateTicketParams{
  final String eventUid;
  final Ticket ticket;
  CreateTicketParams({required this.eventUid, required this.ticket});
}