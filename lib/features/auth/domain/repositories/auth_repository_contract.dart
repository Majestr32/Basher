import 'package:allxclusive/core/error/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository{
  Stream<User?> get user;

  Future<Failure?> signInWithEmailAndPassword({required String email, required String password});
  Future<Failure?> signUpWithEmailAndPassword({required String email, required String password});
  Future<Failure?> signInWithGoogle();
  Future<Failure?> resetPassword({required String email});
  Future<Failure?> signOut();
  Future<Failure?> deleteAccount({required String userUid});
}