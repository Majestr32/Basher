import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/repositories/change_phone_number_repository_contract.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/usecases/action_use_case.dart';

class SendChangePhoneNumberRequest implements ActionUseCase<SendChangePhoneNumberRequestParams>{
  final ChangePhoneNumberRepository changePhoneNumberRepository;

  @override
  Future<void> execute(SendChangePhoneNumberRequestParams params) {
    return changePhoneNumberRepository.sendChangePhoneNumberRequest(phoneNumber: params.phoneNumber, onSuccess: params.onSuccess, onFail: params.onFail);
  }

  const SendChangePhoneNumberRequest({
    required this.changePhoneNumberRepository,
  });
}

class SendChangePhoneNumberRequestParams{
  final String phoneNumber;
  final Function(String) onSuccess;
  final Function(Failure) onFail;

  const SendChangePhoneNumberRequestParams({
    required this.phoneNumber,
    required this.onSuccess,
    required this.onFail,
  });
}