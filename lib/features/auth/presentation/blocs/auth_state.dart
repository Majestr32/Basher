part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  User? get user => maybeMap(
      authenticated: (state) => state.user,
      orElse: () => null);

  const factory AuthState.initial() = _InitialState;
  const factory AuthState.unauthenticated() = _UnauthenticatedState;
  const factory AuthState.authenticated({required User user}) = _AuthenticatedState;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.sentResetPassword() = _SentResetPasswordState;
  const factory AuthState.error({required Failure error}) = _ErrorState;
}
