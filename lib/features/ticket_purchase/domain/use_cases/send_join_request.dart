

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';

import '../repositories/ticket_purchase_repository_contract.dart';

class SendJoinRequest implements VoidUseCase<SendJoinRequestParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Failure?> execute(SendJoinRequestParams params) {
    return ticketPurchaseRepository.sendJoinRequest(joinRequest: params.joinRequest);
  }

  const SendJoinRequest({
    required this.ticketPurchaseRepository,
  });
}

class SendJoinRequestParams{
  final JoinRequest joinRequest;
  SendJoinRequestParams({required this.joinRequest});
}