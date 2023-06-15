part of 'change_phone_bloc.dart';

@freezed
class ChangePhoneState with _$ChangePhoneState {

  const ChangePhoneState._();

  String? get phone => maybeMap(
      requestedPhoneChange: (state) => state.phone,
      codeSent: (state) => state.phone,
      orElse: () => null);

  String? get verificationId => maybeMap(
      codeSent: (state) => state.verificationId,
      orElse: () => null);

  const factory ChangePhoneState.initial() = _InitialState;
  const factory ChangePhoneState.requestedPhoneChange({required String phone}) = _RequestedPhoneChangeState;
  const factory ChangePhoneState.codeSent({required String verificationId, required String phone}) = _CodeSentState;
  const factory ChangePhoneState.failedToSendCode({required Failure failure}) = _FailedToSendCodeState;
  const factory ChangePhoneState.wrongCode({required Failure failure}) = _WrongCodeState;
  const factory ChangePhoneState.passed() = _PassedState;
}
