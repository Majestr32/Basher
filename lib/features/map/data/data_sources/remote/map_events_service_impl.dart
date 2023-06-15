
import 'package:allxclusive/features/map/data/data_sources/remote/map_events_service_contract.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../shared/data/models/remote/event_model/event_model.dart';

class MapEventsServiceImpl implements MapEventsService{
  final FirebaseFirestore _db;

  @override
  Future<List<Event>> getEventsOnMap() async{
    try{
      final snapshots = await _db.collection(kEventsCollection).where('status', isEqualTo: EventStatus.published.name).where('date', isGreaterThanOrEqualTo: DateTime.now()).get();
      final eventModels = snapshots.docs.map((e) => EventModel.fromJson(
          {...e.data(),'uid': e.id})).toList();
      return eventModels.map((e) {
        return Event(eventModel: e,friendsUid: []);
      }).toList();
    }catch(e){
      throw const Failure(code: 'cant-get-events-on-map', message: 'Can`t get events on map');
    }
  }

  @override
  Future<Event> getSelectedEvent({required EventModel event}) async{
    try{
      final friendsSnapshot = await _db.collection(kEventsCollection).doc(event.uid).collection(kTicketStampsCollection).get();
      return Event(eventModel: event, friendsUid: friendsSnapshot.docs.map((e) => e.get("buyer_uid") as String).toList());
    }catch(e){
      throw const Failure(code: 'cant-get-selected-event', message: 'Can`t get selected event');
    }

  }

  const MapEventsServiceImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}