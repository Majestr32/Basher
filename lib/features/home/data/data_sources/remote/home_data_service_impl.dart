import 'dart:developer';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/mappers/event_model_mapper.dart';
import 'package:allxclusive/features/home/data/data_sources/remote/home_data_service_contract.dart';
import 'package:allxclusive/features/home/domain/entities/filter_settings/filter_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../../shared/domain/entities/event/event.dart';



const int _defaultTake = 8;

class HomeDataServiceImpl implements HomeDataService{
  final FirebaseFirestore _db;

  late EventModelMapper eventModelMapper = EventModelMapper(eventsCollectionName: kEventsCollection, ticketsStampsCollectionName: kTicketStampsCollection, db: _db);
  
  @override
  Future<List<Event>> getNewEvents({EventModel? lastLoadedEvent, int? take}) async{
    try{
      final lastSnapshot = lastLoadedEvent == null ? null : await _getSnapshotFromEvent(lastLoadedEvent);
      final initialQuery = _db.collection(kEventsCollection)
          .where('date', isGreaterThanOrEqualTo: DateTime.now())
          .orderBy('date')
          .orderBy('created_at', descending: true)
          .where('status', isEqualTo: EventStatus.published.name);

      QuerySnapshot<Map<String,dynamic>> snapshots;

      if(lastSnapshot == null){
        snapshots = await initialQuery.limit(take ?? _defaultTake).get();
      }else{
        snapshots = await initialQuery.startAfterDocument(lastSnapshot).limit(take ?? _defaultTake).get();
      }

      final docs = snapshots.docs;
      final eventModels = docs.map((e) => EventModel.fromJson({...e.data(),'uid': e.id})).toList();
      return eventModelMapper.fromEventModels(eventModels);
    }catch(e){
      log(e.toString());
      throw const Failure(message: 'Failed to get new events', code: 'failed-get-events');
    }
  }



  @override
  Future<List<Event>> getThisWeekEvents({EventModel? lastLoadedEvent, int? take}) async{
    try{
      final lastSnapshot = lastLoadedEvent == null ? null : await _getSnapshotFromEvent(lastLoadedEvent);

      final initialQuery = _db.collection(kEventsCollection)
          .where('status', isEqualTo: EventStatus.published.name)
          .where('date', isLessThanOrEqualTo: DateTime.now().add(Duration(days: 7)))
          .where('date', isGreaterThanOrEqualTo: DateTime.now())
          .orderBy('date')
          .orderBy('created_at', descending: true);

      QuerySnapshot<Map<String,dynamic>> snapshots;

      if(lastSnapshot == null){
        snapshots = await initialQuery.limit(take ?? _defaultTake).get();
      }else{
        snapshots = await initialQuery.startAfterDocument(lastSnapshot).limit(take ?? _defaultTake).get();
      }

      final docs = snapshots.docs;
      final eventModels = docs.map((e) => EventModel.fromJson({...e.data(),'uid': e.id})).toList();
      return eventModelMapper.fromEventModels(eventModels);
    }catch(e){
      throw const Failure(message: 'Failed to get new events', code: 'failed-get-events');
    }
  }

  @override
  Future<List<Event>> getFilteredEvents({required FilterSettings? filterSettings, EventModel? lastLoadedEvent, int? take}) async{
    try{
      final lastSnapshot = lastLoadedEvent == null ? null : await _getSnapshotFromEvent(lastLoadedEvent);

      final QuerySnapshot<Map<String,dynamic>> snapshots;

      if(filterSettings?.searchQuery != null && filterSettings!.searchQuery.isNotEmpty){
        final initialQuery = _db.collection(kEventsCollection)
            .where('name', isGreaterThanOrEqualTo: filterSettings.searchQuery)
            .where('name', isLessThan: filterSettings.searchQuery + 'z')
            .orderBy('name')
            .where('status', isEqualTo: EventStatus.published.name)
            .where('prioritized_music', isEqualTo: filterSettings.category?.name)
            .where('confirmation_required', isEqualTo: filterSettings.requestRequired);

        if(lastSnapshot == null){
          snapshots = await initialQuery.limit(take ?? _defaultTake).get();
        }else{
          snapshots = await initialQuery.startAfterDocument(lastSnapshot).limit(take ?? _defaultTake).get();
        }
      }else{
        final initialQuery = _db.collection(kEventsCollection)
            .where('status', isEqualTo: EventStatus.published.name)
            .where('prioritized_music', isEqualTo: filterSettings?.category?.name)
            .where('confirmation_required', isEqualTo: filterSettings?.requestRequired)
            .where('date', isGreaterThanOrEqualTo: filterSettings?.minDate)
            .where('date', isLessThanOrEqualTo: filterSettings?.maxDate)
            .orderBy('date');

        if(lastSnapshot == null){
          snapshots = await initialQuery.limit(take ?? _defaultTake).get();
        }else{
          snapshots = await initialQuery.startAfterDocument(lastSnapshot).limit(take ?? _defaultTake).get();
        }
      }
      
      final docs = snapshots.docs;
      final eventModels =  docs.map((e) => EventModel.fromJson({...e.data(),'uid': e.id})).toList();
      return eventModelMapper.fromEventModels(eventModels);
    }catch(e) {
      log(e.toString());
      throw const Failure(message: 'Failed to get filtered events',
          code: 'failed-get-filtered-events');
    }
  }

  Future<DocumentSnapshot> _getSnapshotFromEvent(EventModel event) async => _db.collection(kEventsCollection).doc(event.uid).get();

  HomeDataServiceImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}