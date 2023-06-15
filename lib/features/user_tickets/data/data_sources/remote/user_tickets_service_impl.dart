import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/user_tickets/data/data_sources/remote/user_tickets_service_contract.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import '../../../../../shared/domain/entities/user_ticket/user_ticket.dart';


class UserTicketsServiceImpl implements UserTicketsService{

  final FirebaseFirestore _db;
  @override
  Future<List<UserTicket>> getUserTickets({required String userUid}) async{
    try{
      final snapshots = await _db.collection(kUsersCollection).doc(userUid).collection(kTicketCollection).get();
      final ticketModels = snapshots.docs.map((e) => UserTicketModel.fromJson(e.data())).toList();
      return Stream.fromIterable(ticketModels.map((e) async{
        final friends = await _db.collection(kEventsCollection).doc(e.event.uid).collection(kTicketStampsCollection).get();
        return UserTicket(
            event: Event(eventModel: e.event, friendsUid: friends.docs.map((e) => e.get('buyer_uid') as String).toList()), userTicketModel: e);
      })).asyncMap((event) => event).toList();
    }catch(e){
      throw const Failure(message: 'Failed to get user tickets', code: 'failed-get-user-tickets');
    }
  }

  @override
  Stream listenUserTickets({required String userUid}){
    try{
      return _db.collection(kUsersCollection).doc(userUid).collection(kTicketCollection).snapshots();
    }catch(e){
      throw const Failure(message: 'Failed to get user tickets', code: 'failed-get-user-tickets');
    }
  }

  const UserTicketsServiceImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}