import 'dart:developer';
import 'dart:io';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/utills/upload_file.dart';
import 'package:allxclusive/features/profile_initialization/data/data_sources/remote/user_service_contract.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../../../../core/consts/firebase_collections.dart';
import '../../../../../shared/domain/entities/user/user.dart';



class UserServiceImpl implements UserService{
  final FirebaseFirestore _db;
  final FirebaseStorage _storage;

  @override
  Future<User?> getUserById({required String uid}) async{
    final users = await _db.collection(kUsersCollection).where('uid',isEqualTo: uid).get();
    if(users.size == 0){
      return null;
    }else{
      final user = users.docs.first;
      return User.fromJson(user.data());
    }
  }

  @override
  Future<User> saveUser({required User user}) async{
    try{
      String? remoteFileUrl;
      if(user.photoUrl != null){
        remoteFileUrl = await _storage.ref(kUserProfileImagesCollection).child(user.uid).uploadFile(imgToUpdate: user.photoUrl!);
      }
      final userToSave = user.toJson();
      userToSave..update('photo_url', (_) => remoteFileUrl)..remove('created_at')..putIfAbsent('created_at', () => FieldValue.serverTimestamp());
      await _db.collection(kUsersCollection).doc(user.uid).set(userToSave);

      final result = await getUserById(uid: user.uid);

      if(result == null){
        throw const Failure(message: 'User has been saved improper', code: 'user-saved-improper');
      }

      return result;

    }on FileSystemException catch(e){
      throw const Failure(message: 'Estimating file size operation failed', code: 'estimating-file-size-failed');
    }



  }

  @override
  Future<User> editUser({required User user, String? imgToUpdate}) async{
    try{
      String? remoteFileUrl;
      if(imgToUpdate != null){
        remoteFileUrl = await _storage.ref(kUserProfileImagesCollection).child(user.uid).uploadFile(imgToUpdate: user.photoUrl!);
      }
      final userToSave = user.toJson();
      if(imgToUpdate != null){
        userToSave.update('photo_url', (_) => remoteFileUrl);
      }
      userToSave.remove('created_at');
      await _db.collection(kUsersCollection).doc(user.uid).update(userToSave);

      final result = await getUserById(uid: user.uid);

      if(result == null){
        throw const Failure(message: 'User has been saved improper', code: 'user-saved-improper');
      }

      return result;

    }on FileSystemException catch(e){
      throw const Failure(message: 'Estimating file size operation failed', code: 'estimating-file-size-failed');
    }
  }

  @override
  Future<void> setUserMode({required String uid,required Role role}){
    try{
      return _db.collection(kUsersCollection).doc(uid).update({
        'role': role.str
      });
    }catch(e){
      throw const Failure(message: 'Failed to update on server', code: 'failed-to-upload-on-server');
    }
  }

  const UserServiceImpl({
    required FirebaseFirestore db,
    required FirebaseStorage storage,
  })  : _db = db,
        _storage = storage;
}