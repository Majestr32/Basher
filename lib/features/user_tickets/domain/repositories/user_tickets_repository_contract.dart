import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/shared/domain/entities/user_ticket/user_ticket.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

abstract class UserTicketsRepository{
  Future<Either<Failure, List<UserTicket>>> getUserTickets({required String userUid});
  Stream listenUserTickets({required String userUid});
}