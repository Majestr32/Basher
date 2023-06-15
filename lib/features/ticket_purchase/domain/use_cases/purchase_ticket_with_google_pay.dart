import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

class PurchaseTicketWithGooglePay implements UseCase<UserTicketModel,PurchaseTicketWithGooglePayParams>{
  final TicketPurchaseRepository ticketPurchaseRepository;

  @override
  Future<Either<Failure,UserTicketModel>> execute(PurchaseTicketWithGooglePayParams params) {
    return ticketPurchaseRepository.purchaseTicketWithGooglePay(token: params.token, intent: params.intent, amount: params.amount, currency: params.currency,
    description: params.description, receiptEmail: params.receiptEmail, destinationAccount: params.destinationAccount);
  }

  const PurchaseTicketWithGooglePay({
    required this.ticketPurchaseRepository,
  });
}

class PurchaseTicketWithGooglePayParams{
  final String token;
  final int amount;
  final String currency;
  final String description;
  final String receiptEmail;
  final String destinationAccount;
  final PurchaseIntent intent;

  const PurchaseTicketWithGooglePayParams({
    required this.token,
    required this.intent,
    required this.amount,
    required this.currency,
    required this.description,
    required this.receiptEmail,
    required this.destinationAccount,
  });
}