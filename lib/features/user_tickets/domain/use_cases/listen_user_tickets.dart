import '../repositories/user_tickets_repository_contract.dart';

class ListenUserTickets{
  final UserTicketsRepository userTicketRepository;

  Stream execute(ListenUserTicketsParams params) {
    return userTicketRepository.listenUserTickets(userUid: params.userUid);
  }

  const ListenUserTickets({
    required this.userTicketRepository,
  });
}

class ListenUserTicketsParams{
  final String userUid;
  ListenUserTicketsParams({required this.userUid});
}