import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

class PurchaseTicket implements UseCase<UserTicketModel,PurchaseTicketParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,UserTicketModel>> execute(PurchaseTicketParams params) {
    return ticketPurchaseRepository.purchaseTicket(intent: params.intent, amount: params.amount, currency: params.currency,
    destinationAccount: params.destinationAccount, description: params.description, receiptEmail: params.receiptEmail, paymentMethodId: params.paymentMethodId);
  }

  const PurchaseTicket({
    required this.ticketPurchaseRepository,
  });
}

class PurchaseTicketParams{
  final PurchaseIntent intent;
  final int amount;
  final String currency;
  final String description;
  final String receiptEmail;
  final String destinationAccount;
  final String paymentMethodId;

  const PurchaseTicketParams({
    required this.intent,
    required this.amount,
    required this.currency,
    required this.description,
    required this.receiptEmail,
    required this.destinationAccount,
    required this.paymentMethodId,
  });
}