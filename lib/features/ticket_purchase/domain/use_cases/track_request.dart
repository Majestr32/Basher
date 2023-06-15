import '../repositories/ticket_purchase_repository_contract.dart';

class TrackRequest{
  final TicketPurchaseRepository ticketPurchaseRepository;

  Stream execute(TrackRequestParams params) {
    return ticketPurchaseRepository.trackRequest(organiserUid: params.organiserUid, eventUid: params.eventUid, fromUserUid: params.fromUserUid);
  }

  const TrackRequest({
    required this.ticketPurchaseRepository,
  });
}

class TrackRequestParams{
  final String organiserUid;
  final String fromUserUid;
  final String eventUid;
  TrackRequestParams({required this.organiserUid, required this.fromUserUid, required this.eventUid});
}