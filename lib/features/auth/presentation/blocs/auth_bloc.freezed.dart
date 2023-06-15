// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordEventCopyWith(
          _$_SignInWithEmailAndPasswordEvent value,
          $Res Function(_$_SignInWithEmailAndPasswordEvent) then) =
      __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithEmailAndPasswordEvent>
    implements _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordEventCopyWithImpl(
      _$_SignInWithEmailAndPasswordEvent _value,
      $Res Function(_$_SignInWithEmailAndPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithEmailAndPasswordEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPasswordEvent
    implements _SignInWithEmailAndPasswordEvent {
  const _$_SignInWithEmailAndPasswordEvent(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPasswordEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => __$$_SignInWithEmailAndPasswordEventCopyWithImpl<
          _$_SignInWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordEvent implements AuthEvent {
  const factory _SignInWithEmailAndPasswordEvent(
      {required final String email,
      required final String password}) = _$_SignInWithEmailAndPasswordEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_SignUpWithEmailAndPasswordEventCopyWith(
          _$_SignUpWithEmailAndPasswordEvent value,
          $Res Function(_$_SignUpWithEmailAndPasswordEvent) then) =
      __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpWithEmailAndPasswordEvent>
    implements _$$_SignUpWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_SignUpWithEmailAndPasswordEventCopyWithImpl(
      _$_SignUpWithEmailAndPasswordEvent _value,
      $Res Function(_$_SignUpWithEmailAndPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpWithEmailAndPasswordEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpWithEmailAndPasswordEvent
    implements _SignUpWithEmailAndPasswordEvent {
  const _$_SignUpWithEmailAndPasswordEvent(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpWithEmailAndPasswordEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpWithEmailAndPasswordEventCopyWith<
          _$_SignUpWithEmailAndPasswordEvent>
      get copyWith => __$$_SignUpWithEmailAndPasswordEventCopyWithImpl<
          _$_SignUpWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return signUpWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return signUpWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPasswordEvent implements AuthEvent {
  const factory _SignUpWithEmailAndPasswordEvent(
      {required final String email,
      required final String password}) = _$_SignUpWithEmailAndPasswordEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignUpWithEmailAndPasswordEventCopyWith<
          _$_SignUpWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordEventCopyWith<$Res> {
  factory _$$_ResetPasswordEventCopyWith(_$_ResetPasswordEvent value,
          $Res Function(_$_ResetPasswordEvent) then) =
      __$$_ResetPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResetPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResetPasswordEvent>
    implements _$$_ResetPasswordEventCopyWith<$Res> {
  __$$_ResetPasswordEventCopyWithImpl(
      _$_ResetPasswordEvent _value, $Res Function(_$_ResetPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ResetPasswordEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordEvent implements _ResetPasswordEvent {
  const _$_ResetPasswordEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordEventCopyWith<_$_ResetPasswordEvent> get copyWith =>
      __$$_ResetPasswordEventCopyWithImpl<_$_ResetPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordEvent implements AuthEvent {
  const factory _ResetPasswordEvent({required final String email}) =
      _$_ResetPasswordEvent;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResetPasswordEventCopyWith<_$_ResetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithGoogleEventCopyWith<$Res> {
  factory _$$_SignInWithGoogleEventCopyWith(_$_SignInWithGoogleEvent value,
          $Res Function(_$_SignInWithGoogleEvent) then) =
      __$$_SignInWithGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithGoogleEvent>
    implements _$$_SignInWithGoogleEventCopyWith<$Res> {
  __$$_SignInWithGoogleEventCopyWithImpl(_$_SignInWithGoogleEvent _value,
      $Res Function(_$_SignInWithGoogleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogleEvent implements _SignInWithGoogleEvent {
  const _$_SignInWithGoogleEvent();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleEvent implements AuthEvent {
  const factory _SignInWithGoogleEvent() = _$_SignInWithGoogleEvent;
}

/// @nodoc
abstract class _$$_DeleteAccountEventCopyWith<$Res> {
  factory _$$_DeleteAccountEventCopyWith(_$_DeleteAccountEvent value,
          $Res Function(_$_DeleteAccountEvent) then) =
      __$$_DeleteAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAccountEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_DeleteAccountEvent>
    implements _$$_DeleteAccountEventCopyWith<$Res> {
  __$$_DeleteAccountEventCopyWithImpl(
      _$_DeleteAccountEvent _value, $Res Function(_$_DeleteAccountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAccountEvent implements _DeleteAccountEvent {
  const _$_DeleteAccountEvent();

  @override
  String toString() {
    return 'AuthEvent.deleteAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteAccountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountEvent implements AuthEvent {
  const factory _DeleteAccountEvent() = _$_DeleteAccountEvent;
}

/// @nodoc
abstract class _$$_BackToSignInEventCopyWith<$Res> {
  factory _$$_BackToSignInEventCopyWith(_$_BackToSignInEvent value,
          $Res Function(_$_BackToSignInEvent) then) =
      __$$_BackToSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackToSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_BackToSignInEvent>
    implements _$$_BackToSignInEventCopyWith<$Res> {
  __$$_BackToSignInEventCopyWithImpl(
      _$_BackToSignInEvent _value, $Res Function(_$_BackToSignInEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackToSignInEvent implements _BackToSignInEvent {
  const _$_BackToSignInEvent();

  @override
  String toString() {
    return 'AuthEvent.backToSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BackToSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return backToSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return backToSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (backToSignIn != null) {
      return backToSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return backToSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return backToSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (backToSignIn != null) {
      return backToSignIn(this);
    }
    return orElse();
  }
}

abstract class _BackToSignInEvent implements AuthEvent {
  const factory _BackToSignInEvent() = _$_BackToSignInEvent;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOutEvent>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function(String email, String password)
        signUpWithEmailAndPassword,
    required TResult Function(String email) resetPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() deleteAccount,
    required TResult Function() backToSignIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signUpWithEmailAndPassword,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? deleteAccount,
    TResult? Function()? backToSignIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function(String email, String password)? signUpWithEmailAndPassword,
    TResult Function(String email)? resetPassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? deleteAccount,
    TResult Function()? backToSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignUpWithEmailAndPasswordEvent value)
        signUpWithEmailAndPassword,
    required TResult Function(_ResetPasswordEvent value) resetPassword,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_DeleteAccountEvent value) deleteAccount,
    required TResult Function(_BackToSignInEvent value) backToSignIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_DeleteAccountEvent value)? deleteAccount,
    TResult? Function(_BackToSignInEvent value)? backToSignIn,
    TResult? Function(_SignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignUpWithEmailAndPasswordEvent value)?
        signUpWithEmailAndPassword,
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_DeleteAccountEvent value)? deleteAccount,
    TResult Function(_BackToSignInEvent value)? backToSignIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements AuthEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends AuthState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_UnauthenticatedStateCopyWith<$Res> {
  factory _$$_UnauthenticatedStateCopyWith(_$_UnauthenticatedState value,
          $Res Function(_$_UnauthenticatedState) then) =
      __$$_UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnauthenticatedState>
    implements _$$_UnauthenticatedStateCopyWith<$Res> {
  __$$_UnauthenticatedStateCopyWithImpl(_$_UnauthenticatedState _value,
      $Res Function(_$_UnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnauthenticatedState extends _UnauthenticatedState {
  const _$_UnauthenticatedState() : super._();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedState extends AuthState {
  const factory _UnauthenticatedState() = _$_UnauthenticatedState;
  const _UnauthenticatedState._() : super._();
}

/// @nodoc
abstract class _$$_AuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthenticatedStateCopyWith(_$_AuthenticatedState value,
          $Res Function(_$_AuthenticatedState) then) =
      __$$_AuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthenticatedState>
    implements _$$_AuthenticatedStateCopyWith<$Res> {
  __$$_AuthenticatedStateCopyWithImpl(
      _$_AuthenticatedState _value, $Res Function(_$_AuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthenticatedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedState extends _AuthenticatedState {
  const _$_AuthenticatedState({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      __$$_AuthenticatedStateCopyWithImpl<_$_AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState extends AuthState {
  const factory _AuthenticatedState({required final User user}) =
      _$_AuthenticatedState;
  const _AuthenticatedState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState extends _LoadingState {
  const _$_LoadingState() : super._();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends AuthState {
  const factory _LoadingState() = _$_LoadingState;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$_SentResetPasswordStateCopyWith<$Res> {
  factory _$$_SentResetPasswordStateCopyWith(_$_SentResetPasswordState value,
          $Res Function(_$_SentResetPasswordState) then) =
      __$$_SentResetPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SentResetPasswordStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SentResetPasswordState>
    implements _$$_SentResetPasswordStateCopyWith<$Res> {
  __$$_SentResetPasswordStateCopyWithImpl(_$_SentResetPasswordState _value,
      $Res Function(_$_SentResetPasswordState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SentResetPasswordState extends _SentResetPasswordState {
  const _$_SentResetPasswordState() : super._();

  @override
  String toString() {
    return 'AuthState.sentResetPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentResetPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return sentResetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return sentResetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (sentResetPassword != null) {
      return sentResetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return sentResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return sentResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (sentResetPassword != null) {
      return sentResetPassword(this);
    }
    return orElse();
  }
}

abstract class _SentResetPasswordState extends AuthState {
  const factory _SentResetPasswordState() = _$_SentResetPasswordState;
  const _SentResetPasswordState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState({required this.error}) : super._();

  @override
  final Failure error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() loading,
    required TResult Function() sentResetPassword,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? loading,
    TResult? Function()? sentResetPassword,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? loading,
    TResult Function()? sentResetPassword,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_UnauthenticatedState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SentResetPasswordState value) sentResetPassword,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_UnauthenticatedState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SentResetPasswordState value)? sentResetPassword,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_UnauthenticatedState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SentResetPasswordState value)? sentResetPassword,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends AuthState {
  const factory _ErrorState({required final Failure error}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
