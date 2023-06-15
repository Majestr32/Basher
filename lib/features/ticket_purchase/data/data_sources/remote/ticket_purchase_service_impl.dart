import 'dart:developer';

import 'package:allxclusive/core/consts/api.dart';
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/ticket_purchase_service_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/group_join_request_stamp/group_join_request_stamp.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/ticket_stamp/ticket_stamp.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:allxclusive/features/ticket_purchase/domain/payment_method/payment_method.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

class TicketPurchaseServiceImpl implements TicketPurchaseService{
  final FirebaseFirestore _db;
  final Dio _dio;

  @override
  Future<Failure?> acceptJoinRequests({required String userUid, required String joinRequestUid}) async{
    try{
      await _db.collection(kUsersCollection).doc(userUid).collection(kJoinRequestsCollection).doc(joinRequestUid).update({
        'accepted': true
      });
      return null;
    }catch(e){
      throw const Failure(message: 'Failed to deny join requests', code: 'failed-deny-join-request');
    }
  }

  @override
  Future<Failure?> denyJoinRequests({required String userUid, required String joinRequestUid}) async{
    try{
      await _db.collection(kUsersCollection).doc(userUid).collection(kJoinRequestsCollection).doc(joinRequestUid).update({
        'accepted': false
      });
      return null;
    }catch(e){
      throw const Failure(message: 'Failed to deny join requests', code: 'failed-deny-join-request');
    }
  }

  @override
  Future<List<JoinRequest>> getJoinRequests({required String userUid}) async{
    try{
      final snapshots = await _db.collection(kUsersCollection).doc(userUid).collection(kJoinRequestsCollection).where('accepted', isNull: true).get();
      return snapshots.docs.map((e) => JoinRequest.fromJson({...e.data(),'uid': e.id})).toList();
    }catch(e){
      throw const Failure(message: 'Failed to load join requests', code: 'failed-load-join-requests');
    }
  }

  @override
  Stream listenToJoinRequestsChanged({required String userUid}) {
    return _db.collection(kUsersCollection).doc(userUid).collection(kJoinRequestsCollection).where('accepted', isNull: true).snapshots();
  }

  @override
  Future<UserTicketModel> purchaseTicket({required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount, required String paymentMethodId}) async{
    final paymentIntent = await _dio.post(ApiEndpoints.createPaymentIntent, data: {
      "amount": amount,
      "currency": currency,
      "payment_method": paymentMethodId,
      "description": description,
      "receipt_email": receiptEmail,
      "destination_account": destinationAccount
    });
    await _dio.post(ApiEndpoints.confirmPaymentIntent(paymentIntent.data["id"]));
    return _addTicketToUser(intent: intent);
  }

  Future<UserTicketModel> _addTicketToUser({required PurchaseIntent intent}) async{
    try{
      final qrCode = const Uuid().v4();
      final userTicket = UserTicketModel(qrCode: qrCode, ticket: intent.ticket, event: intent.event, ticketUid: intent.ticket.uid!, eventUid: intent.event.uid!);
      await _db.collection(kUsersCollection).doc(intent.userUid).collection(kTicketCollection)
          .add(userTicket.toJson());
      final ticketStamp = TicketStamp(createdAt: DateTime.now(),qrCode: qrCode, buyerUid: intent.userUid, gender: Gender.fromString(intent.gender), ticketUid: intent.ticket.uid!);
      await _db.collection(kEventsCollection).doc(intent.event.uid).collection(kTicketStampsCollection)
          .add(ticketStamp.toJson());
      await _db.collection(kEventsCollection).doc(intent.event.uid).collection(kTicketCollection).doc(intent.ticket.uid).update({'bought': FieldValue.increment(1)});
      return userTicket;
    }catch(e){
      throw const Failure(message: 'Failed to purchase ticket', code: 'failed-purchase-ticket');
    }
  }

  @override
  Future<UserToEventMetadata> getUserToEventMetadata({required String userUid, required String organiserUid, required String eventUid}) async{
    final sentRequest = await _sentPurchaseTicketRequest(userUid: userUid, eventUid: eventUid, organiserUid: organiserUid);
    final acceptedRequest = await _canPurchaseTicket(userUid: userUid, organiserUid: organiserUid, eventUid: eventUid);
    final bought = await _boughtTicket(userUid: userUid, eventUid: eventUid);
    return UserToEventMetadata(bought: bought, sentRequest: sentRequest, acceptedRequest: acceptedRequest);
  }

  @override
  Future<Failure?> sendJoinRequest({required JoinRequest joinRequest}) async{
    try{
      final ref = _db.collection(kUsersCollection).doc(joinRequest.toUserUid).collection(kJoinRequestsCollection).doc();
      final joinRequestUid = ref.id;
      if(joinRequest.groupMembers.isNotEmpty){
        for(var groupMember in joinRequest.groupMembers){
          final stamp = GroupJoinRequestStamp(toUserUid: groupMember.toUserUid, originalJoinRequestUid: joinRequestUid, eventUid: joinRequest.eventUid);
          if(await _sentPurchaseTicketRequest(userUid: groupMember.fromUserUid, organiserUid: groupMember.toUserUid, eventUid: groupMember.eventUid)){
            return const Failure(message: 'One of party members has already sent request', code: 'party-member-sent-join-request');
          }
          await _db.collection(kUsersCollection).doc(groupMember.fromUserUid).collection(kGroupJoinRequestStampsCollection).add(stamp.toJson());
        }
      }
      await ref.set(joinRequest.toJson());
      return null;
    } catch(e){
      return const Failure(message: 'Failed to sent join request', code: 'failed-send-join-request');
    }
  }

  @override
  Future<User> getUserById({required String userUid}) async{
    try{
      final snapshot = await _db.collection(kUsersCollection).doc(userUid).get();
      return User.fromJson(snapshot.data()!);
    }catch(e){
      throw const Failure(message: 'Failed to find user', code: 'failed-find-user');
    }
  }

  @override
  Stream trackRequest({required String organiserUid, required String fromUserUid, required String eventUid}){
    return _db.collection(kUsersCollection).doc(organiserUid).collection(kJoinRequestsCollection)
        .where('event_uid', isEqualTo: eventUid)
        .where('from_user_uid', isEqualTo: fromUserUid)
        .where('accepted', isEqualTo: true)
        .snapshots();
  }

  Future<bool> _sentPurchaseTicketRequest({required String userUid, required String organiserUid, required String eventUid}) async{
    try{
      final snapshots = await _db.collection(kUsersCollection).doc(organiserUid).collection(kJoinRequestsCollection)
          .where('event_uid', isEqualTo: eventUid)
          .where('from_user_uid', isEqualTo: userUid)
          .get();
      if(snapshots.size == 1){
        return true;
      }else{
        final groupInvitations = await _db.collection(kUsersCollection).doc(userUid).collection(kGroupJoinRequestStampsCollection)
            .where('event_uid', isEqualTo: eventUid)
            .where('to_user_uid', isEqualTo: organiserUid)
            .get();
        return groupInvitations.size == 1;
      }
    }catch(e){
      throw const Failure(message: 'Failed to identify if sent purchase ticket request', code: 'failed-identify-sent-request');
    }
  }

  Future<bool> _canPurchaseTicket({required String userUid, required String organiserUid, required String eventUid}) async{
    try{
      final snapshots = await _db.collection(kUsersCollection).doc(organiserUid).collection(kJoinRequestsCollection)
          .where('event_uid', isEqualTo: eventUid)
          .where('from_user_uid', isEqualTo: userUid)
          .where('accepted', isEqualTo: true)
          .get();
      if(snapshots.size == 1){
        return true;
      }else{
        final groupInvitations = await _db.collection(kUsersCollection).doc(userUid).collection(kGroupJoinRequestStampsCollection)
            .where('event_uid', isEqualTo: eventUid)
            .where('to_user_uid', isEqualTo: organiserUid)
            .get();

        if(groupInvitations.size == 1){
          final joinRequestStamp = GroupJoinRequestStamp.fromJson(groupInvitations.docs.first.data());
          final joinRequest = await _db.collection(kUsersCollection).doc(organiserUid).collection(kJoinRequestsCollection)
              .doc(joinRequestStamp.originalJoinRequestUid)
              .get();
          if(joinRequest.exists){
            return JoinRequest.fromJson(joinRequest.data()!).accepted == true;
          }
        }
        return false;
      }
    }catch(e){
      throw const Failure(message: 'Failed to identify if can purchase ticket', code: 'failed-identify-can-purchase');
    }
  }

  Future<bool> _boughtTicket({required String userUid, required String eventUid}) async{
    try{
      final snapshots = await _db.collection(kUsersCollection).doc(userUid).collection(kTicketCollection)
          .where('event_uid', isEqualTo: eventUid)
          .get();
      return snapshots.size == 1;
    }catch(e){
      throw const Failure(message: 'Failed to identify if bought ticket', code: 'failed-identify-bought-ticket');
    }
  }

  @override
  Future<UserTicketModel> purchaseTicketWithGooglePay({required String token, required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount}) async{
    try{
      final paymentMethod = await _dio.post(ApiEndpoints.createPaymentMethodFromToken, data: {"token": token});
      final paymentIntent = await _dio.post(ApiEndpoints.createPaymentIntent, data: {
        "amount": amount,
        "currency": currency,
        "payment_method": paymentMethod.data["id"],
        "description": description,
        "receipt_email": receiptEmail,
        "destination_account": destinationAccount
      });
      await _dio.post(ApiEndpoints.confirmPaymentIntent(paymentIntent.data["id"]));
      return _addTicketToUser(intent: intent);
    }catch(e){
      throw const Failure(message: 'Failed to purchase ticket', code: 'failed-purchase-ticket');
    }
  }

  @override
  Future<List<PaymentMethod>> getUserPaymentMethods({required String email}) async{
    try{
      final customerId = ((await _dio.get(ApiEndpoints.getCustomersByEmail, queryParameters: {"email": email})).data["data"] as List).first["id"];
      final paymentMethods = await _dio.get(ApiEndpoints.getCustomerPaymentMethods(customerId));
      return (paymentMethods.data["data"] as List).map((e) => PaymentMethod.fromJson(e)).toList();
    }catch(e){
      throw const Failure(message: 'Failed to fetch user payment methods', code: 'failed-fetch-payment-methods');
    }
  }

  @override
  Future<PaymentMethod> addPaymentMethodToCustomer({required String email, required String holderName, required String card, required String expMonth, required String expYear, required String cvc}) async{
    try{
      final customerId = ((await _dio.get(ApiEndpoints.getCustomersByEmail, queryParameters: {"email": email})).data["data"] as List).first["id"];
      final paymentMethods = await _dio.post(ApiEndpoints.addCard, data: {
        "number": card,
        "exp_month": int.parse(expMonth),
        "exp_year": 2000 + int.parse(expYear),
        "cvc": int.parse(cvc),
        "holder": holderName,
        "customer_id": customerId
      });
      return PaymentMethod.fromJson(paymentMethods.data);
    }catch(e){
      throw const Failure(message: 'Failed to create user card', code: 'failed-create-card');
    }
  }

  @override
  Future<PaymentMethod> detachPaymentMethod({required String paymentMethodId}) async{
    try{
      final paymentMethod = await _dio.post(ApiEndpoints.removeCard, data: {
        "payment_method_id": paymentMethodId
      });
      return PaymentMethod.fromJson(paymentMethod.data);
    }catch(e){
      throw const Failure(message: 'Failed to detach user card', code: 'failed-detach-card');
    }
  }

  const TicketPurchaseServiceImpl({
    required FirebaseFirestore db,
    required Dio dio,
  })  : _db = db,
        _dio = dio;
}