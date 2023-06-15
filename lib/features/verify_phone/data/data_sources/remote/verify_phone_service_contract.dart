import '../../../../../core/error/failure.dart';

abstract class VerifyPhoneService{
  Future<void> sendVerificationPhoneNumberRequest({required String phoneNumber, required Function(String) onSuccess, required Function(Failure) onFail});

  Future<void> verifySmsCode({required String verificationId, required String phoneNumber, required String sms});

  Future<bool> isPhoneNumberSet({required String userUid});
}