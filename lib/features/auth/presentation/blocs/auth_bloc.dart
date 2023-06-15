import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_in_with_email_and_password.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_in_with_google.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_out.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/delete_account.dart';
import '../../domain/use_cases/reset_password.dart';
import '../../domain/use_cases/sign_up_with_email_and_password.dart';
import '../../domain/use_cases/user_stream.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  late final StreamSubscription _authSubscription;
  final ResetPassword _resetPasswordCase;
  final SignInWithEmailAndPassword _signInWithEmailAndPasswordCase;
  final SignUpWithEmailAndPassword _signUpWithEmailAndPasswordCase;
  final SignInWithGoogle _signInWithGoogleCase;
  final SignOut _signOutCase;
  final GetUserStream _getUserStreamCase;
  final DeleteAccount _deleteAccountCase;

  AuthBloc({required ResetPassword resetPasswordCase, required SignInWithEmailAndPassword signInWithEmailAndPasswordCase,
    required SignUpWithEmailAndPassword signUpWithEmailAndPasswordCase, required SignInWithGoogle signInWithGoogleCase,
    required SignOut signOutCase, required GetUserStream getUserStreamCase, required DeleteAccount deleteAccountCase})
      : _resetPasswordCase = resetPasswordCase,
        _signInWithEmailAndPasswordCase = signInWithEmailAndPasswordCase,
        _signUpWithEmailAndPasswordCase = signUpWithEmailAndPasswordCase,
        _signInWithGoogleCase = signInWithGoogleCase,
        _signOutCase = signOutCase,
        _getUserStreamCase = getUserStreamCase,
        _deleteAccountCase = deleteAccountCase,
        super(const AuthState.initial()) {
    _authSubscription = _getUserStreamCase.execute().listen((user) {
      if(user == null){
        emit(const AuthState.unauthenticated());
      }else{
        emit(AuthState.authenticated(user: user));
      }
    });
    on<AuthEvent>(_mapAuthEventToState);
  }

  Future<void> _mapAuthEventToState(AuthEvent event, Emitter<AuthState> emit) => event.map(
        signInWithEmailAndPassword: (e) => _signInWithEmailAndPassword(e,emit),
        signInWithGoogle: (e) => _signInWithGoogle(e,emit),
        backToSignIn: (e) => _backToSignIn(e, emit),
        signUpWithEmailAndPassword: (e) => _signUpWithEmailAndPassword(e,emit),
        resetPassword: (e) => _resetPassword(e,emit),
        signOut: (e) => _signOut(e,emit),
        deleteAccount: (e) => _deleteAccount(e, emit));

  Future<void> _backToSignIn(_BackToSignInEvent event, Emitter<AuthState> emit) async{
    emit(AuthState.unauthenticated());
  }

  Future<void> _deleteAccount(_DeleteAccountEvent event, Emitter<AuthState> emit) async{
    final failure = await _deleteAccountCase.execute(DeleteAccountParams(userUid: state.user!.uid));
    if(failure == null){
      emit(AuthState.unauthenticated());
    }
  }

  Future<void> _signInWithEmailAndPassword(_SignInWithEmailAndPasswordEvent event, Emitter<AuthState> emit) async{
    await _loadingToErrorOrData(() => _signInWithEmailAndPasswordCase.execute(SignInWithEmailAndPasswordParams(email: event.email, password: event.password)), emit);
  }

  Future<void> _signInWithGoogle(_SignInWithGoogleEvent event, Emitter<AuthState> emit) async{
    final previousState = state;
    await _loadingToErrorOrData(() => _signInWithGoogleCase.execute(SignInWithGoogleParams()), emit, () => emit(previousState));
  }

  Future<void> _signUpWithEmailAndPassword(_SignUpWithEmailAndPasswordEvent event, Emitter<AuthState> emit) async{
    await _loadingToErrorOrData(() => _signUpWithEmailAndPasswordCase.execute(SignUpWithEmailAndPasswordParams(email: event.email, password: event.password)),emit);
  }

  Future<void> _resetPassword(_ResetPasswordEvent event, Emitter<AuthState> emit) async{
    await _loadingToErrorOrData(() => _resetPasswordCase.execute(ResetPasswordParams(email: event.email)),emit, (){
      emit(AuthState.sentResetPassword());
    });
  }

  Future<void> _signOut(_SignOutEvent event, Emitter<AuthState> emit) async{
    await _loadingToErrorOrData(() => _signOutCase.execute(SignOutParams()),emit);
  }

  Future<void> _loadingToErrorOrData(Future<Failure?> Function() execute, Emitter<AuthState> emit, [Function? onSuccess]) async{
    final previousState = state;
    emit(const AuthState.loading());
    final failure = await execute.call();
    if(failure != null){
      emitError(failure, previousState, emit);
    }
    onSuccess?.call();
  }

  void emitError(Failure failure, AuthState previousState, Emitter<AuthState> emit){
    emit(AuthState.error(error: failure));
    emit(previousState);
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }

}
