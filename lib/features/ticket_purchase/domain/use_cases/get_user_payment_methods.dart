import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetUserPaymentMethods implements UseCase<List<PaymentMethod>,GetUserPaymentMethodsParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,List<PaymentMethod>>> execute(GetUserPaymentMethodsParams params) {
    return ticketPurchaseRepository.getUserPaymentMethods(email: params.email);
  }

  const GetUserPaymentMethods({
    required this.ticketPurchaseRepository,
  });
}

class GetUserPaymentMethodsParams{
  final String email;
  GetUserPaymentMethodsParams({required this.email});
}