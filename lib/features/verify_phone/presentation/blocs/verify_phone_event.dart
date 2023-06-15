part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneEvent with _$VerifyPhoneEvent {
  const factory VerifyPhoneEvent.checkIfNeedPhoneVerification({required String userUid}) = _CheckIfNeedPhoneVerificationEvent;
  const factory VerifyPhoneEvent.enterPhoneNumber({required String phone}) = _EnterPhoneNumberEvent;
  const factory VerifyPhoneEvent.backToPhoneNumberEntering() = _BackToPhoneNumberEnteringEvent;
  const factory VerifyPhoneEvent.enterCode({required String sms}) = _EnterCodeEvent;
  const factory VerifyPhoneEvent.successfullySentCode({required String verificationId, required String phone}) = _SuccessfullySentCodeEvent;
  const factory VerifyPhoneEvent.failSentCode({required Failure failure}) = _FailSentCodeEvent;
  const factory VerifyPhoneEvent.reset() = _ResetEvent;

}
