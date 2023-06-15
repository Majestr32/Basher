

import 'package:allxclusive/shared/domain/entities/user_ticket/user_ticket.dart';

import '../../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

abstract class UserTicketsService{
  Future<List<UserTicket>> getUserTickets({required String userUid});
  Stream listenUserTickets({required String userUid});
}