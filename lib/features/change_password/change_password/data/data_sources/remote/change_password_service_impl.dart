import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/change_password/change_password/data/data_sources/remote/change_password_service_contract.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChangePasswordServiceImpl implements ChangePasswordService{

  final FirebaseAuth _auth;

  @override
  Future<void> changePassword({required String oldPassword, required String newPassword}) async{
    assert(_auth.currentUser != null, "User must be authenticated before executing this operation");

    final email = _auth.currentUser!.email;
    final authProvider = EmailAuthProvider.credential(email: email!, password: oldPassword);
    try{
      final cred = await _auth.currentUser!.reauthenticateWithCredential(authProvider);
      await cred.user!.updatePassword(newPassword);
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        throw Failure(message: 'New password is too weak', code: e.code);
      }else{
        throw Failure(message: 'Old password is incorrect', code: e.code);
      }
    }


  }

  const ChangePasswordServiceImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;
}