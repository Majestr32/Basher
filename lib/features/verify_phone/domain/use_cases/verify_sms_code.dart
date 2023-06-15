
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/verify_phone/domain/repositories/verify_phone_repository_contract.dart';


class VerifySmsCode implements VoidUseCase<VerifySmsCodeParams>{
  final VerifyPhoneRepository verifyPhoneRepository;

  @override
  Future<Failure?> execute(VerifySmsCodeParams params) {
    return verifyPhoneRepository.verifySmsCode(verificationId: params.verificationId, phoneNumber: params.phoneNumber, sms: params.sms);
  }

  const VerifySmsCode({
    required this.verifyPhoneRepository,
  });
}

class VerifySmsCodeParams{
  final String phoneNumber;
  final String sms;
  final String verificationId;

  const VerifySmsCodeParams({
    required this.phoneNumber,
    required this.sms,
    required this.verificationId,
  });
}