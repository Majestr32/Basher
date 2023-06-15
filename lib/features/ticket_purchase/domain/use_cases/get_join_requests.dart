import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetJoinRequests implements UseCase<List<JoinRequest>,GetJoinRequestsParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,List<JoinRequest>>> execute(GetJoinRequestsParams params) {
    return ticketPurchaseRepository.getJoinRequests(userUid: params.userUid);
  }

  const GetJoinRequests({
    required this.ticketPurchaseRepository,
  });
}

class GetJoinRequestsParams{
  final String userUid;
  GetJoinRequestsParams({required this.userUid});
}