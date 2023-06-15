import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class DetachPaymentMethod implements UseCase<PaymentMethod,DetachPaymentMethodParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,PaymentMethod>> execute(DetachPaymentMethodParams params) {
    return ticketPurchaseRepository.detachPaymentMethod(
        paymentMethodId: params.paymentMethodId);
  }

  const DetachPaymentMethod({
    required this.ticketPurchaseRepository,
  });
}

class DetachPaymentMethodParams{
  final String paymentMethodId;

  const DetachPaymentMethodParams({
    required this.paymentMethodId
  });
}