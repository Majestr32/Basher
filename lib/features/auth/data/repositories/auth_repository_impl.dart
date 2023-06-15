import 'dart:developer';

import 'package:allxclusive/core/consts/api.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/error/failure.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _auth;
  final Dio _dio;

  @override
  Stream<User?> get user => _auth.userChanges();

  @override
  Future<Failure?> signInWithEmailAndPassword({required String email, required String password}) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    }on FirebaseAuthException catch(e){
      switch(e.code){
        case 'user-disabled':
          return Failure(message: 'This account is banned', code: e.code);
        default:
          return Failure(message: 'Email or password are incorrect', code: e.code);
      }
    }
  }

  @override
  Future<Failure?> signUpWithEmailAndPassword({required String email, required String password}) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return null;
    }on FirebaseAuthException catch(e){
      switch(e.code){
        case 'email-already-in-use':
          return Failure(message: 'This email is already registered', code: e.code);
        case 'invalid-email':
          return Failure(message: 'This email is not valid', code: e.code);
        case 'weak-password':
          return Failure(message: 'Password is too weak', code: e.code);
        default:
          return Failure(message: 'Can`t register this account', code: e.code);
      }
    }
  }

  @override
  Future<Failure?> resetPassword({required String email}) async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
      return null;
    }on FirebaseException catch(e){
      return Failure(message: 'Can`t send reset password email to that account', code: e.code);
    }
  }

  @override
  Future<Failure?> signOut() async{
    await _auth.signOut();
    GoogleSignIn().disconnect();
    return null;
  }

  @override
  Future<Failure?> signInWithGoogle() async{
    try{
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      if(googleAuth?.accessToken == null || googleAuth?.idToken == null){
        return null;
      }

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      return null;
    }on FirebaseException catch(e){
      return Failure(message: 'User is disabled', code: e.code);
    }
  }

  @override
  Future<Failure?> deleteAccount({required String userUid}) async{
    try{
      await _dio.post(ApiEndpoints.deleteAccount(userUid));
      return null;
    }on DioError catch(e){
      log(e.toString());
      return const Failure(message: 'Failed to delete account', code: 'failed-delete-account');
    }
  }

  const AuthRepositoryImpl({
    required FirebaseAuth auth,
    required Dio dio,
  })  : _auth = auth,
        _dio = dio;
}