import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/ticket_purchase_service_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

class TicketPurchaseRepositoryImpl implements TicketPurchaseRepository{
  final TicketPurchaseService _ticketPurchaseService;
  @override
  Future<Failure?> acceptJoinRequests({required String userUid, required String joinRequestUid}) {
    return _ticketPurchaseService.acceptJoinRequests(userUid: userUid, joinRequestUid: joinRequestUid);
  }

  @override
  Future<Failure?> denyJoinRequests({required String userUid, required String joinRequestUid}){
    return _ticketPurchaseService.denyJoinRequests(userUid: userUid, joinRequestUid: joinRequestUid);
  }

  @override
  Future<Either<Failure, List<JoinRequest>>> getJoinRequests({required String userUid}) async{
    try{
      return Right(await _ticketPurchaseService.getJoinRequests(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, UserTicketModel>> purchaseTicket({required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount, required String paymentMethodId}) async{
    try{
      return Right(await _ticketPurchaseService.purchaseTicket(intent: intent, amount: amount, currency: currency, description: description, receiptEmail: receiptEmail, destinationAccount: destinationAccount, paymentMethodId: paymentMethodId));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, UserToEventMetadata>> getUserToEventMetadata({required String userUid, required String organiserUid, required String eventUid}) async{
    try{
      return Right(await _ticketPurchaseService.getUserToEventMetadata(userUid: userUid, organiserUid: organiserUid, eventUid: eventUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Failure?> sendJoinRequest({required JoinRequest joinRequest}){
    return _ticketPurchaseService.sendJoinRequest(joinRequest: joinRequest);
  }

  @override
  Future<Either<Failure, User>> getUserById({required String userUid}) async{
    try{
      return Right(await _ticketPurchaseService.getUserById(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Stream listenToJoinRequestsChanged({required String userUid}) {
    return _ticketPurchaseService.listenToJoinRequestsChanged(userUid: userUid);
  }

  @override
  Stream trackRequest({required String organiserUid, required String fromUserUid, required String eventUid}) {
    return _ticketPurchaseService.trackRequest(organiserUid: organiserUid, fromUserUid: fromUserUid, eventUid: eventUid);
  }

  @override
  Future<Either<Failure, UserTicketModel>> purchaseTicketWithGooglePay({required String token, required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount}) async{
    try{
      return Right(await _ticketPurchaseService.purchaseTicketWithGooglePay(token: token, intent: intent, amount: amount, currency: currency, description: description, receiptEmail: receiptEmail, destinationAccount: destinationAccount));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<PaymentMethod>>> getUserPaymentMethods({required String email}) async{
    try{
      return Right(await _ticketPurchaseService.getUserPaymentMethods(email: email));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, PaymentMethod>> addPaymentMethodToCustomer({required String email, required String holderName, required String card, required String expMonth, required String expYear, required String cvc}) async{
    try{
      return Right(await _ticketPurchaseService.addPaymentMethodToCustomer(email: email, holderName: holderName, card: card, expMonth: expMonth, expYear: expYear, cvc: cvc));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, PaymentMethod>> detachPaymentMethod({required String paymentMethodId}) async{
    try{
      return Right(await _ticketPurchaseService.detachPaymentMethod(paymentMethodId: paymentMethodId));
    }on Failure catch(e){
      return Left(e);
    }
  }

  const TicketPurchaseRepositoryImpl({
    required TicketPurchaseService ticketPurchaseService,
  }) : _ticketPurchaseService = ticketPurchaseService;


}