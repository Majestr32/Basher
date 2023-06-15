import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';
import '../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import '../payment_method/payment_method.dart';

abstract class TicketPurchaseRepository{
  Future<Either<Failure, UserTicketModel>> purchaseTicket({required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount, required String paymentMethodId});
  Future<Either<Failure, UserToEventMetadata>> getUserToEventMetadata({required String userUid, required String organiserUid, required String eventUid});
  Future<Either<Failure, List<JoinRequest>>> getJoinRequests({required String userUid});
  Future<Either<Failure, UserTicketModel>> purchaseTicketWithGooglePay({required String token, required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount});
  Future<Either<Failure, User>> getUserById({required String userUid});
  Stream listenToJoinRequestsChanged({required String userUid});
  Stream trackRequest({required String organiserUid, required String fromUserUid, required String eventUid});
  Future<Failure?> sendJoinRequest({required JoinRequest joinRequest});
  Future<Failure?> denyJoinRequests({required String userUid, required String joinRequestUid});
  Future<Failure?> acceptJoinRequests({required String userUid, required String joinRequestUid});
  Future<Either<Failure, List<PaymentMethod>>> getUserPaymentMethods({required String email});
  Future<Either<Failure, PaymentMethod>> addPaymentMethodToCustomer({required String email, required String holderName, required String card, required String expMonth, required String expYear, required String cvc});
  Future<Either<Failure, PaymentMethod>> detachPaymentMethod({required String paymentMethodId});
}