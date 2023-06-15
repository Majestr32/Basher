import 'package:allxclusive/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class VerifyPhoneRepository{
  Future<void> sendVerificationPhoneNumberRequest({required String phoneNumber, required Function(String) onSuccess, required Function(Failure) onFail});

  Future<Failure?> verifySmsCode({required String verificationId, required String phoneNumber, required String sms});

  Future<Either<Failure,bool>> isPhoneNumberSet({required String userUid});
}