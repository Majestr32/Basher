import 'dart:developer';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/friends_search_service_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';

import '../../../../../core/consts/firebase_collections.dart';

class FriendsSearchServiceImpl implements FriendsSearchService{

  final FirebaseFirestore _db;
  @override
  Future<List<User>> searchPeople({required String searchQuery})  async{
    try{
      final snapshots = await _db.collection(kUsersCollection).where('name')
          .where('name', isGreaterThanOrEqualTo: searchQuery)
          .where('name', isLessThanOrEqualTo: searchQuery+ '\uf8ff')
          .get();
      return snapshots.docs.map((e) => User.fromJson(e.data())).toList();
    }catch(e){
      rethrow;
      throw const Failure(message: 'Unable to search for people', code: 'unable-search-people');
    }
  }

  @override
  Future<List<User>> fetchSuggestedFriends() async{
    try{
      final contacts = await ContactsService.getContacts(withThumbnails: false);
      final phoneNumbers = contacts.map((e) => e.phones).whereType<List<Item>>().reduce((a,b) => [...a,...b]).toSet().map((e) => e.value!.trim()).toList();
      int splitSize = 10;
      int currentBatch = 0;
      List<User> fbContacts = [];
      while(phoneNumbers.skip(currentBatch * splitSize).take(splitSize).isNotEmpty){
        final batch = phoneNumbers.skip(currentBatch * splitSize).take(splitSize).toList();
        if(batch.where((val) => val.startsWith('+36')).isNotEmpty){
          log(batch.where((val) => val.startsWith('+36')).first);
        }
        final foundUsers = (await _db.collection(kUsersCollection).where("phone", whereIn: batch.toList()).get()).docs.map((e) => User.fromJson(e.data()));
        fbContacts.addAll(foundUsers);
        currentBatch++;
      }
      return fbContacts;
    }catch(e){
      throw const Failure(message: 'Unable to fetch Suggested friends', code: 'unable-fetch-people');
    }
  }

  const FriendsSearchServiceImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}