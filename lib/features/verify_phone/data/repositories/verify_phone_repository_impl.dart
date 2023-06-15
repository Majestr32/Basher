import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/verify_phone/data/data_sources/remote/verify_phone_service_contract.dart';
import 'package:allxclusive/features/verify_phone/domain/repositories/verify_phone_repository_contract.dart';
import 'package:dartz/dartz.dart';

class VerifyPhoneRepositoryImpl implements VerifyPhoneRepository{
  final VerifyPhoneService _verifyPhoneService;


  const VerifyPhoneRepositoryImpl({
    required VerifyPhoneService verifyPhoneService,
  }) : _verifyPhoneService = verifyPhoneService;

  @override
  Future<void> sendVerificationPhoneNumberRequest({required String phoneNumber, required Function(String verificationId) onSuccess, required Function(Failure failure) onFail}){
      return _verifyPhoneService.sendVerificationPhoneNumberRequest(phoneNumber: phoneNumber, onSuccess: onSuccess, onFail: onFail);
  }

  @override
  Future<Failure?> verifySmsCode({required String verificationId, required String phoneNumber, required String sms}) async{
    try{
      await _verifyPhoneService.verifySmsCode(verificationId: verificationId, phoneNumber: phoneNumber, sms: sms);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  @override
  Future<Either<Failure, bool>> isPhoneNumberSet({required String userUid}) async{
    try{
      return Right(await _verifyPhoneService.isPhoneNumberSet(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }
}