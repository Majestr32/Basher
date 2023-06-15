
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/action_use_case.dart';

import '../repositories/verify_phone_repository_contract.dart';

class SendVerificationPhoneNumberRequest implements ActionUseCase<SendVerificationPhoneNumberRequestParams>{
  final VerifyPhoneRepository verifyPhoneRepository;

  @override
  Future<void> execute(SendVerificationPhoneNumberRequestParams params) {
    return verifyPhoneRepository.sendVerificationPhoneNumberRequest(phoneNumber: params.phoneNumber, onSuccess: params.onSuccess, onFail: params.onFail);
  }

  const SendVerificationPhoneNumberRequest({
    required this.verifyPhoneRepository,
  });
}

class SendVerificationPhoneNumberRequestParams{
  final String phoneNumber;
  final Function(String) onSuccess;
  final Function(Failure) onFail;

  const SendVerificationPhoneNumberRequestParams({
    required this.phoneNumber,
    required this.onSuccess,
    required this.onFail,
  });
}