import 'package:allxclusive/features/change_phone_number/change_phone_number/data/data_sources/remote/change_phone_number_service_contract.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../../core/consts/firebase_collections.dart';
import '../../../../../../core/error/failure.dart';

class ChangePhoneNumberServiceImpl implements ChangePhoneNumberService{
  final FirebaseAuth _auth;
  final FirebaseFirestore _db;

  @override
  Future<void> sendChangePhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail}) {
    return _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (_){}, verificationFailed: (e) {
      onFail.call(Failure(message: 'Couldn`t send verification', code: e.code));
    }, codeSent: (verificationId,_) => onSuccess.call(verificationId), codeAutoRetrievalTimeout: (_){});
  }

  @override
  Future<void> confirmChangePhoneNumber({required String verificationId, required String phoneNumber, required String sms}) async{
    try{
      final phoneProvider = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: sms);
      await _auth.currentUser!.updatePhoneNumber(phoneProvider);
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

  const ChangePhoneNumberServiceImpl({
    required FirebaseAuth auth,
    required FirebaseFirestore db,
  })  : _auth = auth,
        _db = db;
}