
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/user_tickets/data/data_sources/remote/user_tickets_service_contract.dart';
import 'package:allxclusive/features/user_tickets/domain/repositories/user_tickets_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user_ticket/user_ticket.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

class UserTicketsRepositoryImpl implements UserTicketsRepository{
  final UserTicketsService _userTicketsService;
  @override
  Future<Either<Failure, List<UserTicket>>> getUserTickets({required String userUid}) async{
    try{
      return Right(await _userTicketsService.getUserTickets(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Stream listenUserTickets({required String userUid}){
    return _userTicketsService.listenUserTickets(userUid: userUid);
  }

  const UserTicketsRepositoryImpl({
    required UserTicketsService userTicketsService,
  }) : _userTicketsService = userTicketsService;
}