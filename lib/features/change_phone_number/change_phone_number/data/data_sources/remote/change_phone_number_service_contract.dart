import '../../../../../../core/error/failure.dart';

abstract class ChangePhoneNumberService{
  Future<void> sendChangePhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail});

  Future<void> confirmChangePhoneNumber({required String verificationId, required String phoneNumber, required String sms});
}