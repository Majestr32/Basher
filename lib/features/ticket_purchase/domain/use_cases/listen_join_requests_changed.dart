import '../repositories/ticket_purchase_repository_contract.dart';

class ListenJoinRequestsChanged{
  final TicketPurchaseRepository ticketPurchaseRepository;
  
  Stream execute(ListenJoinRequestsChangedParams params) {
    return ticketPurchaseRepository.listenToJoinRequestsChanged(userUid: params.userUid);
  }

  const ListenJoinRequestsChanged({
    required this.ticketPurchaseRepository,
  });
}

class ListenJoinRequestsChangedParams{
  final String userUid;
  ListenJoinRequestsChangedParams({required this.userUid});
}