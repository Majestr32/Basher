import 'dart:developer';

import 'package:allxclusive/core/consts/firebase_collections.dart';
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/mappers/event_model_mapper.dart';
import 'package:allxclusive/features/friend_events/friend_events/data/data_sources/remote/friend_events_service_contract.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../shared/data/models/remote/user_ticket_model/user_ticket_model.dart';

const int _latestFriendEventsCount = 5;

class FriendEventsServiceImpl implements FriendEventsService{
  final FirebaseFirestore _db;
  
  late final EventModelMapper eventModelMapper = EventModelMapper(eventsCollectionName: kEventsCollection, ticketsStampsCollectionName: kTicketStampsCollection, db: _db);
  
  @override
  Future<List<Event>> getFriendEvents({required String friendUid}) async{
    try{
      final userTickets = (await _db.collection(kUsersCollection).doc(friendUid).collection(kTicketCollection).orderBy('created_at', descending: true).limit(_latestFriendEventsCount).limit(_latestFriendEventsCount).get()).docs.map((e) => UserTicketModel.fromJson(e.data())).toList();
      final events = userTickets.map((e) => e.event).toSet().toList();
      return eventModelMapper.fromEventModels(events);
    }catch(e){
      log(e.toString());
      throw const Failure(message: 'Failed to get friend events', code: 'failed-get-friend-events');
    }
  }

  FriendEventsServiceImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}