part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _InitialState;
  const factory ChangePasswordState.success() = _SuccessState;
  const factory ChangePasswordState.error({required Failure error}) = _ErrorState;
}
