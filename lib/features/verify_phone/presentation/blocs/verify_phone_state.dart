part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneState with _$VerifyPhoneState {
  const VerifyPhoneState._();

  String? get phone => maybeMap(
      requestedPhoneConfirmation: (state) => state.phone,
      codeSent: (state) => state.phone,
      orElse: () => null);

  String? get verificationId => maybeMap(
    codeSent: (state) => state.verificationId,
    orElse: () => null
  );

  Failure? get failure => maybeMap(
      failedToSendCode: (state) => state.failure,
      wrongCode: (state) => state.failure,
      orElse: () => null);

  const factory VerifyPhoneState.initial() = _InitialState;
  const factory VerifyPhoneState.needsPhoneVerification() = _NeedsPhoneVerificationState;
  const factory VerifyPhoneState.requestedPhoneConfirmation({required String phone}) = _RequestedPhoneConfirmationState;
  const factory VerifyPhoneState.codeSent({required String verificationId, required String phone}) = _CodeSentState;
  const factory VerifyPhoneState.failedToSendCode({required Failure failure}) = _FailedToSendCodeState;
  const factory VerifyPhoneState.wrongCode({required Failure failure}) = _WrongCodeState;
  const factory VerifyPhoneState.passed() = _PassedState;
}
