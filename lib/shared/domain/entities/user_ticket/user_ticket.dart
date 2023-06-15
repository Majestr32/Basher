import 'package:allxclusive/shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';

class UserTicket{
  final Event event;
  final UserTicketModel userTicketModel;

  const UserTicket({
    required this.event,
    required this.userTicketModel,
  });
}