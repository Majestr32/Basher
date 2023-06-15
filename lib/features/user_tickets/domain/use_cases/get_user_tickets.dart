

import 'package:allxclusive/core/usecases/usecase.dart';
import 'package:allxclusive/features/user_tickets/domain/repositories/user_tickets_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import '../../../../shared/domain/entities/user_ticket/user_ticket.dart';

class GetUserTickets implements UseCase<List<UserTicket>,GetUserTicketsParams>{
  final UserTicketsRepository userTicketRepository;

  @override
  Future<Either<Failure,List<UserTicket>>> execute(GetUserTicketsParams params) {
    return userTicketRepository.getUserTickets(userUid: params.userUid);
  }

  const GetUserTickets({
    required this.userTicketRepository,
  });
}

class GetUserTicketsParams{
  final String userUid;
  GetUserTicketsParams({required this.userUid});
}