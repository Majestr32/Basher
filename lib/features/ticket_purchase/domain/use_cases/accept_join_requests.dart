import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';

import '../../../../core/error/failure.dart';

class AcceptJoinRequests implements VoidUseCase<AcceptJoinRequestsParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Failure?> execute(AcceptJoinRequestsParams params) {
    return ticketPurchaseRepository.acceptJoinRequests(userUid: params.userUid, joinRequestUid: params.joinRequestsUid);
  }

  const AcceptJoinRequests({
    required this.ticketPurchaseRepository,
  });
}

class AcceptJoinRequestsParams{
  final String userUid;
  final String joinRequestsUid;
  AcceptJoinRequestsParams({required this.userUid, required this.joinRequestsUid});
}