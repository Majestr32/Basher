import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/repositories/change_phone_number_repository_contract.dart';

class ConfirmChangePhoneNumber implements VoidUseCase<ConfirmChangePhoneNumberParams>{
  final ChangePhoneNumberRepository changePhoneNumberRepository;

  @override
  Future<Failure?> execute(ConfirmChangePhoneNumberParams params) {
    return changePhoneNumberRepository.confirmChangePhoneNumber(phoneNumber: params.phoneNumber, verificationId: params.verificationId, sms: params.sms);
  }

  const ConfirmChangePhoneNumber({
    required this.changePhoneNumberRepository,
  });
}

class ConfirmChangePhoneNumberParams{
  final String phoneNumber;
  final String verificationId;
  final String sms;

  const ConfirmChangePhoneNumberParams({
    required this.phoneNumber,
    required this.verificationId,
    required this.sms,
  });
}