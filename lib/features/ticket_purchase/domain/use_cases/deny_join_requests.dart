import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';

import '../../../../core/error/failure.dart';

class DenyJoinRequests implements VoidUseCase<DenyJoinRequestsParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Failure?> execute(DenyJoinRequestsParams params) {
    return ticketPurchaseRepository.denyJoinRequests(userUid: params.userUid, joinRequestUid: params.joinRequestsUid);
  }

  const DenyJoinRequests({
    required this.ticketPurchaseRepository,
  });
}

class DenyJoinRequestsParams{
  final String userUid;
  final String joinRequestsUid;
  DenyJoinRequestsParams({required this.userUid, required this.joinRequestsUid});
}