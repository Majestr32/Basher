

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../shared/data/models/remote/event_model/event_model.dart';
import '../../shared/domain/entities/event/event.dart';

class EventModelMapper{
  final FirebaseFirestore _db;
  final String eventsCollectionName;
  final String ticketsStampsCollectionName;

  Future<List<Event>> fromEventModels(List<EventModel> eventModels) async{
    return Stream.fromIterable(eventModels.map((e) async {
      final ticketStamps = await _db.collection(eventsCollectionName).doc(e.uid).collection(ticketsStampsCollectionName).get();
      final ticketsBuyerId = ticketStamps.docs.map((e) => e.get('buyer_uid') as String).toList();
      return Event(eventModel: e, friendsUid: ticketsBuyerId);
    })).asyncMap((event) => event).toList();
  }

  const EventModelMapper({
    required this.eventsCollectionName,
    required this.ticketsStampsCollectionName,
    required FirebaseFirestore db,
  }) : _db = db;
}