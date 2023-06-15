import 'dart:developer';
import 'dart:io';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/utills/upload_file.dart';
import 'package:allxclusive/features/events/data/data_sources/remote/event_service_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../../../../../shared/domain/entities/ticket/ticket.dart';



class EventServiceImpl implements EventService{
  final FirebaseStorage _storage;
  final FirebaseFirestore _db;
  
  @override
  Future<Event> createEvent({required EventModel event, String? imgPath}) async{
    try{
      String? remoteImg;
      final eventToSave = event.toJson();
      final ref = _db.collection(kEventsCollection).doc();
      if(imgPath != null){
        final id = ref.id;
        remoteImg = await _storage.ref('$kEventImgPath/$id.png').uploadFile(imgToUpdate: imgPath);
      }
      eventToSave..update('img_path', (_) => remoteImg)..remove('created_at')..putIfAbsent('created_at', () => FieldValue.serverTimestamp());
      await ref.set(eventToSave);
      return Event(eventModel: EventModel.fromJson({...(await ref.get()).data()!, 'uid' : ref.id}), friendsUid: []);
    }on Failure catch(_){
      rethrow;
    }catch(_){
      throw const Failure(message: 'Failed to create event', code: 'failed-create-event');
    }
  }

  @override
  Future<List<Event>> getOrganiserEvents({required String organiserUid}) async{
    try{
      final snapshots = await _db.collection(kEventsCollection).where('organiser_uid', isEqualTo: organiserUid).get();
      final docs = snapshots.docs;
      return docs.map((e) => Event(eventModel: EventModel.fromJson({...e.data(),'uid': e.id}), friendsUid: [])).toList();
    }catch(e){
      throw const Failure(message: 'Failed to load organiser events', code: 'failed-load-organiser_events');
    }
  }

  @override
  Future<Ticket> createTicket({required Ticket ticket, required String eventUid}) async{
    try{
      await _db.collection(kEventsCollection).doc(eventUid).collection(kTicketCollection).doc().set(ticket.toJson());
      return ticket;
    }catch(e){
      throw const Failure(message: 'Failed to create ticket', code: 'failed-create-ticket');
    }
  }

  @override
  Future<EventDetailed> getEventDetails({required Event event}) async{
    try{
      final snapshots = await _db.collection(kEventsCollection).doc(event.eventModel.uid).collection(kTicketCollection).get();
      final docs = snapshots.docs;
      final tickets = docs.map((e) => Ticket.fromJson({...e.data(),'uid': e.id})).toList();
      int? manCount;
      int? womanCount;
      int? peopleCount;
      String? accountId;
      if(event.eventModel.peopleCount == null){
        manCount = (await _db.collection(kEventsCollection)
            .doc(event.eventModel.uid).collection(kTicketStampsCollection)
            .where('gender', isEqualTo: Gender.man.str).count()
            .get()).count;
        womanCount = (await _db.collection(kEventsCollection)
            .doc(event.eventModel.uid).collection(kTicketStampsCollection)
            .where('gender', isEqualTo: Gender.woman.str).count()
            .get()).count;
      }else{
        peopleCount = (await _db.collection(kEventsCollection)
            .doc(event.eventModel.uid).collection(kTicketStampsCollection)
            .count()
            .get()).count;
      }
      final accountDocs = (await _db.collection(kUsersCollection).doc(event.eventModel.organiserUid).collection(kUserStripeAccounts).get()).docs;
      accountId = accountDocs.isEmpty ? null : accountDocs.first.get('id');
      return EventDetailed(event: event, accountId: accountId, tickets: tickets, manBought: manCount, womanBought: womanCount, peopleBought: peopleCount);
    }catch(e){
      throw const Failure(message: 'Failed to load event details', code: 'failed-load-event_details');
    }
  }

  @override
  Future<Event> editEvent({required EventModel event, String? imgPath}) async{
    try{
      String? remoteImg;
      final eventToSave = event.toJson();
      eventToSave.remove('created_at');
      if(imgPath != null){
        remoteImg = await _storage.ref(kEventImgPath).uploadFile(imgToUpdate: imgPath);
        eventToSave.update('img_path', (_) => remoteImg);
      }
      final ref = _db.collection(kEventsCollection).doc(event.uid);
      await ref.update(eventToSave);
      return Event(eventModel: EventModel.fromJson((await ref.get()).data()!), friendsUid: []);
    }on Failure catch(_){
      rethrow;
    }catch(_){
      throw const Failure(message: 'Failed to update event', code: 'failed-update-event');
    }
  }

  @override
  Future<Ticket> removeTicket({required Ticket ticket, required String eventUid}) async{
    try{
      await _db.collection(kEventsCollection).doc(eventUid).collection(kTicketCollection).doc(ticket.uid).delete();
      return ticket;
    }catch(_){
      throw const Failure(message: 'Failed to remove ticket', code: 'failed-remove-ticket');
    }
  }

  @override
  Future<void> removeAllTickets({required String eventUid}) async{
    try{
      final snapshots = await _db.collection(kEventsCollection).doc(eventUid).collection(kTicketCollection).get();
      for (var doc in snapshots.docs) {
        await doc.reference.delete();
      }
    }catch(_){
      throw const Failure(message: 'Failed to remove all tickets', code: 'failed-remove-all-tickets');
    }
  }

  @override
  Future<Event> publishEvent({required Event event}) async{
    try{
      final snapshotTickets = await _db.collection(kEventsCollection)
          .doc(event.eventModel.uid)
          .collection(kTicketCollection)
          .get();
      final tickets = snapshotTickets.docs.map((e) => Ticket.fromJson(e.data()));
      double minPrice = tickets.isEmpty ? 0 : tickets.first.price;
      for(var ticket in tickets){
        if(ticket.price < minPrice){
          minPrice = ticket.price;
        }
      }
      await _db.collection(kEventsCollection).doc(event.eventModel.uid).update({
        'status': EventStatus.published.name,
        'min_price': minPrice
      });
      return Event(eventModel: event.eventModel.copyWith.call(status: EventStatus.published), friendsUid: []);
    }catch(_){
      throw const Failure(message: 'Failed to publish ticket', code: 'failed-publish-ticket');
    }
  }

  @override
  Future<void> deleteEvent({required String eventUid}) async{
    try{
      await _db.collection(kEventsCollection).doc(eventUid).delete();
    }catch(_){
      throw const Failure(message: 'Failed to delete event', code: 'failed-delete-event');
    }
  }

  const EventServiceImpl({
    required FirebaseStorage storage,
    required FirebaseFirestore db,
  })  : _storage = storage,
        _db = db;
}