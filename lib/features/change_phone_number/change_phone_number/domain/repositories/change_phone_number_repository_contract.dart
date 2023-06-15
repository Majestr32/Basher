

import '../../../../../core/error/failure.dart';

abstract class ChangePhoneNumberRepository{
  Future<Failure?> sendChangePhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail});

  Future<Failure?> confirmChangePhoneNumber({required String verificationId, required String phoneNumber, required String sms});
}