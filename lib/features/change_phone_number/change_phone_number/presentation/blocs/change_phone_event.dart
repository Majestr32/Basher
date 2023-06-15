part of 'change_phone_bloc.dart';

@freezed
class ChangePhoneEvent with _$ChangePhoneEvent {
  const factory ChangePhoneEvent.enterPhoneNumber({required String phone}) = _EnterPhoneNumberEvent;
  const factory ChangePhoneEvent.enterCode({required String sms}) = _EnterCodeEvent;
  const factory ChangePhoneEvent.backToPhoneNumberEntering() = _BackToPhoneNumberEnteringEvent;
  const factory ChangePhoneEvent.successfullySentCode({required String verificationId, required String phone}) = _SuccessfullySentCodeEvent;
  const factory ChangePhoneEvent.failSentCode({required Failure failure}) = _FailSentCodeEvent;
}
