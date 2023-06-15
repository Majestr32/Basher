

import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import '../../../../../shared/domain/entities/user/user.dart';
import '../../../domain/entities/join_request/join_request.dart';
import '../../../domain/entities/purchase_intent/purchase_intent.dart';

abstract class TicketPurchaseService{
  Future<UserTicketModel> purchaseTicket({required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount, required String paymentMethodId});
  Future<UserTicketModel> purchaseTicketWithGooglePay({required String token, required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount});
  Future<List<JoinRequest>> getJoinRequests({required String userUid});
  Future<UserToEventMetadata> getUserToEventMetadata({required String userUid, required String organiserUid, required String eventUid});
  Future<Failure?> sendJoinRequest({required JoinRequest joinRequest});
  Future<User> getUserById({required String userUid});
  Stream listenToJoinRequestsChanged({required String userUid});
  Stream trackRequest({required String organiserUid, required String fromUserUid, required String eventUid});
  Future<Failure?> denyJoinRequests({required String userUid, required String joinRequestUid});
  Future<Failure?> acceptJoinRequests({required String userUid, required String joinRequestUid});
  Future<List<PaymentMethod>> getUserPaymentMethods({required String email});
  Future<PaymentMethod> addPaymentMethodToCustomer({required String email, required String holderName, required String card, required String expMonth, required String expYear, required String cvc});
  Future<PaymentMethod> detachPaymentMethod({required String paymentMethodId});
}