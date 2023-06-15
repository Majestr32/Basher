import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetUserById implements UseCase<User,GetUserByIdParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,User>> execute(GetUserByIdParams params) {
    return ticketPurchaseRepository.getUserById(userUid: params.userUid);
  }

  const GetUserById({
    required this.ticketPurchaseRepository,
  });
}

class GetUserByIdParams{
  final String userUid;
  GetUserByIdParams({required this.userUid});
}