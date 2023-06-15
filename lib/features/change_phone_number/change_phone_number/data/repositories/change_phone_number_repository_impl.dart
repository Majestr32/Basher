import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/data/data_sources/remote/change_phone_number_service_contract.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/repositories/change_phone_number_repository_contract.dart';

class ChangePhoneNumberRepositoryImpl implements ChangePhoneNumberRepository{
  final ChangePhoneNumberService _changePhoneNumberService;

  @override
  Future<Failure?> confirmChangePhoneNumber({required String verificationId, required String phoneNumber, required String sms}) async{
    try{
      await _changePhoneNumberService.confirmChangePhoneNumber(verificationId: verificationId, phoneNumber: phoneNumber, sms: sms);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  @override
  Future<Failure?> sendChangePhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail}) async{
    try{
      await _changePhoneNumberService.sendChangePhoneNumberRequest(onFail: onFail, onSuccess: onSuccess, phoneNumber: phoneNumber);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  const ChangePhoneNumberRepositoryImpl({
    required ChangePhoneNumberService changePhoneNumberService,
  }) : _changePhoneNumberService = changePhoneNumberService;
}