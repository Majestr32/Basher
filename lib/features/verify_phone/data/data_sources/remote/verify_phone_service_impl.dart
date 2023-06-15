
import 'dart:developer';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/verify_phone/data/data_sources/remote/verify_phone_service_contract.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/consts/firebase_collections.dart';

class VerifyPhoneServiceImpl implements VerifyPhoneService{
  final FirebaseFirestore _db;
  final FirebaseAuth _auth;

  @override
  Future<void> sendVerificationPhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail}) {
    return _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (_){}, verificationFailed: (e) {
      log(e.message!);
      onFail.call(Failure(message: 'Couldn`t send verification', code: e.code));
    }, codeSent: (verificationId,_) => onSuccess.call(verificationId), codeAutoRetrievalTimeout: (_){});
  }

  @override
  Future<void> verifySmsCode({required String verificationId, required String phoneNumber, required String sms}) async{
    try{
      final phoneProvider = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: sms);
      await _auth.currentUser!.linkWithCredential(phoneProvider);
      await _db.collection(kUsersCollection).doc(_auth.currentUser!.uid).update({
        'phone': phoneNumber
      });
    }on FirebaseAuthException catch(e){
      if(e.code == 'provider-already-linked' || e.code == 'credential-already-in-use'){
        throw Failure(message: 'Phone is already taken', code: e.code);
      }
      throw Failure(message: 'Sms code is not valid', code: e.code);
    } on FirebaseException catch(e){
      throw Failure(message: 'Couldn`t save phone phone number', code: e.code);
    }
  }

  @override
  Future<bool> isPhoneNumberSet({required String userUid}) async{
    try{
      final user = (await _db.collection(kUsersCollection).doc(userUid).get()).data()!;
      return user.containsKey('phone') && user["phone"] != null;
    }on FirebaseException catch(e){
      throw Failure(message: "Can`t get user phone number", code: e.code);
    }
  }

  const VerifyPhoneServiceImpl({
    required FirebaseFirestore db,
    required FirebaseAuth auth,
  })  : _db = db,
        _auth = auth;
}