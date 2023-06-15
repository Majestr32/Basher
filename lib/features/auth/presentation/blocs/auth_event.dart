part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithEmailAndPassword({required String email, required String password}) = _SignInWithEmailAndPasswordEvent;
  const factory AuthEvent.signUpWithEmailAndPassword({required String email, required String password}) = _SignUpWithEmailAndPasswordEvent;
  const factory AuthEvent.resetPassword({required String email}) = _ResetPasswordEvent;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogleEvent;
  const factory AuthEvent.deleteAccount() = _DeleteAccountEvent;
  const factory AuthEvent.backToSignIn() = _BackToSignInEvent;
  const factory AuthEvent.signOut() = _SignOutEvent;
}
