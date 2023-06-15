import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class AddPaymentMethodToCustomer implements UseCase<PaymentMethod,AddPaymentMethodToCustomerParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,PaymentMethod>> execute(AddPaymentMethodToCustomerParams params) {
    return ticketPurchaseRepository.addPaymentMethodToCustomer(
      card: params.card, cvc: params.cvc, holderName: params.holderName,
      email: params.email, expMonth: params.expMonth, expYear: params.expYear);
  }

  const AddPaymentMethodToCustomer({
    required this.ticketPurchaseRepository,
  });
}

class AddPaymentMethodToCustomerParams{
  final String card;
  final String cvc;
  final String holderName;
  final String email;
  final String expMonth;
  final String expYear;

  const AddPaymentMethodToCustomerParams({
    required this.card,
    required this.cvc,
    required this.holderName,
    required this.email,
    required this.expMonth,
    required this.expYear,
  });
}