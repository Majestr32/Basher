

import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/features/user_tickets/domain/repositories/user_tickets_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetUserToEventMetadata implements UseCase<UserToEventMetadata,GetUserToEventMetadataParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,UserToEventMetadata>> execute(GetUserToEventMetadataParams params) {
    return ticketPurchaseRepository.getUserToEventMetadata(userUid: params.userUid, eventUid: params.eventUid, organiserUid: params.organiserUid);
  }

  const GetUserToEventMetadata({
    required this.ticketPurchaseRepository,
  });
}

class GetUserToEventMetadataParams{
  final String userUid;
  final String eventUid;
  final String organiserUid;
  GetUserToEventMetadataParams({required this.userUid, required this.eventUid, required this.organiserUid});
}