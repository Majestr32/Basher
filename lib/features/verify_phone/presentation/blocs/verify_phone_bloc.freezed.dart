// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyPhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneEventCopyWith<$Res> {
  factory $VerifyPhoneEventCopyWith(
          VerifyPhoneEvent value, $Res Function(VerifyPhoneEvent) then) =
      _$VerifyPhoneEventCopyWithImpl<$Res, VerifyPhoneEvent>;
}

/// @nodoc
class _$VerifyPhoneEventCopyWithImpl<$Res, $Val extends VerifyPhoneEvent>
    implements $VerifyPhoneEventCopyWith<$Res> {
  _$VerifyPhoneEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckIfNeedPhoneVerificationEventCopyWith<$Res> {
  factory _$$_CheckIfNeedPhoneVerificationEventCopyWith(
          _$_CheckIfNeedPhoneVerificationEvent value,
          $Res Function(_$_CheckIfNeedPhoneVerificationEvent) then) =
      __$$_CheckIfNeedPhoneVerificationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_CheckIfNeedPhoneVerificationEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res,
        _$_CheckIfNeedPhoneVerificationEvent>
    implements _$$_CheckIfNeedPhoneVerificationEventCopyWith<$Res> {
  __$$_CheckIfNeedPhoneVerificationEventCopyWithImpl(
      _$_CheckIfNeedPhoneVerificationEvent _value,
      $Res Function(_$_CheckIfNeedPhoneVerificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_CheckIfNeedPhoneVerificationEvent(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckIfNeedPhoneVerificationEvent
    implements _CheckIfNeedPhoneVerificationEvent {
  const _$_CheckIfNeedPhoneVerificationEvent({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'VerifyPhoneEvent.checkIfNeedPhoneVerification(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckIfNeedPhoneVerificationEvent &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckIfNeedPhoneVerificationEventCopyWith<
          _$_CheckIfNeedPhoneVerificationEvent>
      get copyWith => __$$_CheckIfNeedPhoneVerificationEventCopyWithImpl<
          _$_CheckIfNeedPhoneVerificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return checkIfNeedPhoneVerification(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return checkIfNeedPhoneVerification?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkIfNeedPhoneVerification != null) {
      return checkIfNeedPhoneVerification(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return checkIfNeedPhoneVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return checkIfNeedPhoneVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (checkIfNeedPhoneVerification != null) {
      return checkIfNeedPhoneVerification(this);
    }
    return orElse();
  }
}

abstract class _CheckIfNeedPhoneVerificationEvent implements VerifyPhoneEvent {
  const factory _CheckIfNeedPhoneVerificationEvent(
      {required final String userUid}) = _$_CheckIfNeedPhoneVerificationEvent;

  String get userUid;
  @JsonKey(ignore: true)
  _$$_CheckIfNeedPhoneVerificationEventCopyWith<
          _$_CheckIfNeedPhoneVerificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EnterPhoneNumberEventCopyWith<$Res> {
  factory _$$_EnterPhoneNumberEventCopyWith(_$_EnterPhoneNumberEvent value,
          $Res Function(_$_EnterPhoneNumberEvent) then) =
      __$$_EnterPhoneNumberEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_EnterPhoneNumberEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res, _$_EnterPhoneNumberEvent>
    implements _$$_EnterPhoneNumberEventCopyWith<$Res> {
  __$$_EnterPhoneNumberEventCopyWithImpl(_$_EnterPhoneNumberEvent _value,
      $Res Function(_$_EnterPhoneNumberEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_EnterPhoneNumberEvent(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterPhoneNumberEvent implements _EnterPhoneNumberEvent {
  const _$_EnterPhoneNumberEvent({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'VerifyPhoneEvent.enterPhoneNumber(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterPhoneNumberEvent &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterPhoneNumberEventCopyWith<_$_EnterPhoneNumberEvent> get copyWith =>
      __$$_EnterPhoneNumberEventCopyWithImpl<_$_EnterPhoneNumberEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return enterPhoneNumber(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return enterPhoneNumber?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return enterPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return enterPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _EnterPhoneNumberEvent implements VerifyPhoneEvent {
  const factory _EnterPhoneNumberEvent({required final String phone}) =
      _$_EnterPhoneNumberEvent;

  String get phone;
  @JsonKey(ignore: true)
  _$$_EnterPhoneNumberEventCopyWith<_$_EnterPhoneNumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackToPhoneNumberEnteringEventCopyWith<$Res> {
  factory _$$_BackToPhoneNumberEnteringEventCopyWith(
          _$_BackToPhoneNumberEnteringEvent value,
          $Res Function(_$_BackToPhoneNumberEnteringEvent) then) =
      __$$_BackToPhoneNumberEnteringEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackToPhoneNumberEnteringEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res,
        _$_BackToPhoneNumberEnteringEvent>
    implements _$$_BackToPhoneNumberEnteringEventCopyWith<$Res> {
  __$$_BackToPhoneNumberEnteringEventCopyWithImpl(
      _$_BackToPhoneNumberEnteringEvent _value,
      $Res Function(_$_BackToPhoneNumberEnteringEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackToPhoneNumberEnteringEvent
    implements _BackToPhoneNumberEnteringEvent {
  const _$_BackToPhoneNumberEnteringEvent();

  @override
  String toString() {
    return 'VerifyPhoneEvent.backToPhoneNumberEntering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackToPhoneNumberEnteringEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return backToPhoneNumberEntering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return backToPhoneNumberEntering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (backToPhoneNumberEntering != null) {
      return backToPhoneNumberEntering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return backToPhoneNumberEntering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return backToPhoneNumberEntering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (backToPhoneNumberEntering != null) {
      return backToPhoneNumberEntering(this);
    }
    return orElse();
  }
}

abstract class _BackToPhoneNumberEnteringEvent implements VerifyPhoneEvent {
  const factory _BackToPhoneNumberEnteringEvent() =
      _$_BackToPhoneNumberEnteringEvent;
}

/// @nodoc
abstract class _$$_EnterCodeEventCopyWith<$Res> {
  factory _$$_EnterCodeEventCopyWith(
          _$_EnterCodeEvent value, $Res Function(_$_EnterCodeEvent) then) =
      __$$_EnterCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String sms});
}

/// @nodoc
class __$$_EnterCodeEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res, _$_EnterCodeEvent>
    implements _$$_EnterCodeEventCopyWith<$Res> {
  __$$_EnterCodeEventCopyWithImpl(
      _$_EnterCodeEvent _value, $Res Function(_$_EnterCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sms = null,
  }) {
    return _then(_$_EnterCodeEvent(
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterCodeEvent implements _EnterCodeEvent {
  const _$_EnterCodeEvent({required this.sms});

  @override
  final String sms;

  @override
  String toString() {
    return 'VerifyPhoneEvent.enterCode(sms: $sms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterCodeEvent &&
            (identical(other.sms, sms) || other.sms == sms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterCodeEventCopyWith<_$_EnterCodeEvent> get copyWith =>
      __$$_EnterCodeEventCopyWithImpl<_$_EnterCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return enterCode(sms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return enterCode?.call(sms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (enterCode != null) {
      return enterCode(sms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return enterCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return enterCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (enterCode != null) {
      return enterCode(this);
    }
    return orElse();
  }
}

abstract class _EnterCodeEvent implements VerifyPhoneEvent {
  const factory _EnterCodeEvent({required final String sms}) =
      _$_EnterCodeEvent;

  String get sms;
  @JsonKey(ignore: true)
  _$$_EnterCodeEventCopyWith<_$_EnterCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessfullySentCodeEventCopyWith<$Res> {
  factory _$$_SuccessfullySentCodeEventCopyWith(
          _$_SuccessfullySentCodeEvent value,
          $Res Function(_$_SuccessfullySentCodeEvent) then) =
      __$$_SuccessfullySentCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, String phone});
}

/// @nodoc
class __$$_SuccessfullySentCodeEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res, _$_SuccessfullySentCodeEvent>
    implements _$$_SuccessfullySentCodeEventCopyWith<$Res> {
  __$$_SuccessfullySentCodeEventCopyWithImpl(
      _$_SuccessfullySentCodeEvent _value,
      $Res Function(_$_SuccessfullySentCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? phone = null,
  }) {
    return _then(_$_SuccessfullySentCodeEvent(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessfullySentCodeEvent implements _SuccessfullySentCodeEvent {
  const _$_SuccessfullySentCodeEvent(
      {required this.verificationId, required this.phone});

  @override
  final String verificationId;
  @override
  final String phone;

  @override
  String toString() {
    return 'VerifyPhoneEvent.successfullySentCode(verificationId: $verificationId, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessfullySentCodeEvent &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessfullySentCodeEventCopyWith<_$_SuccessfullySentCodeEvent>
      get copyWith => __$$_SuccessfullySentCodeEventCopyWithImpl<
          _$_SuccessfullySentCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return successfullySentCode(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return successfullySentCode?.call(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (successfullySentCode != null) {
      return successfullySentCode(verificationId, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return successfullySentCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return successfullySentCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (successfullySentCode != null) {
      return successfullySentCode(this);
    }
    return orElse();
  }
}

abstract class _SuccessfullySentCodeEvent implements VerifyPhoneEvent {
  const factory _SuccessfullySentCodeEvent(
      {required final String verificationId,
      required final String phone}) = _$_SuccessfullySentCodeEvent;

  String get verificationId;
  String get phone;
  @JsonKey(ignore: true)
  _$$_SuccessfullySentCodeEventCopyWith<_$_SuccessfullySentCodeEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailSentCodeEventCopyWith<$Res> {
  factory _$$_FailSentCodeEventCopyWith(_$_FailSentCodeEvent value,
          $Res Function(_$_FailSentCodeEvent) then) =
      __$$_FailSentCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailSentCodeEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res, _$_FailSentCodeEvent>
    implements _$$_FailSentCodeEventCopyWith<$Res> {
  __$$_FailSentCodeEventCopyWithImpl(
      _$_FailSentCodeEvent _value, $Res Function(_$_FailSentCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FailSentCodeEvent(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FailSentCodeEvent implements _FailSentCodeEvent {
  const _$_FailSentCodeEvent({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VerifyPhoneEvent.failSentCode(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailSentCodeEvent &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailSentCodeEventCopyWith<_$_FailSentCodeEvent> get copyWith =>
      __$$_FailSentCodeEventCopyWithImpl<_$_FailSentCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return failSentCode(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return failSentCode?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (failSentCode != null) {
      return failSentCode(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return failSentCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return failSentCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (failSentCode != null) {
      return failSentCode(this);
    }
    return orElse();
  }
}

abstract class _FailSentCodeEvent implements VerifyPhoneEvent {
  const factory _FailSentCodeEvent({required final Failure failure}) =
      _$_FailSentCodeEvent;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FailSentCodeEventCopyWith<_$_FailSentCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetEventCopyWith<$Res> {
  factory _$$_ResetEventCopyWith(
          _$_ResetEvent value, $Res Function(_$_ResetEvent) then) =
      __$$_ResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetEventCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res, _$_ResetEvent>
    implements _$$_ResetEventCopyWith<$Res> {
  __$$_ResetEventCopyWithImpl(
      _$_ResetEvent _value, $Res Function(_$_ResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetEvent implements _ResetEvent {
  const _$_ResetEvent();

  @override
  String toString() {
    return 'VerifyPhoneEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) checkIfNeedPhoneVerification,
    required TResult Function(String phone) enterPhoneNumber,
    required TResult Function() backToPhoneNumberEntering,
    required TResult Function(String sms) enterCode,
    required TResult Function(String verificationId, String phone)
        successfullySentCode,
    required TResult Function(Failure failure) failSentCode,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? checkIfNeedPhoneVerification,
    TResult? Function(String phone)? enterPhoneNumber,
    TResult? Function()? backToPhoneNumberEntering,
    TResult? Function(String sms)? enterCode,
    TResult? Function(String verificationId, String phone)?
        successfullySentCode,
    TResult? Function(Failure failure)? failSentCode,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? checkIfNeedPhoneVerification,
    TResult Function(String phone)? enterPhoneNumber,
    TResult Function()? backToPhoneNumberEntering,
    TResult Function(String sms)? enterCode,
    TResult Function(String verificationId, String phone)? successfullySentCode,
    TResult Function(Failure failure)? failSentCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfNeedPhoneVerificationEvent value)
        checkIfNeedPhoneVerification,
    required TResult Function(_EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(_BackToPhoneNumberEnteringEvent value)
        backToPhoneNumberEntering,
    required TResult Function(_EnterCodeEvent value) enterCode,
    required TResult Function(_SuccessfullySentCodeEvent value)
        successfullySentCode,
    required TResult Function(_FailSentCodeEvent value) failSentCode,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult? Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult? Function(_EnterCodeEvent value)? enterCode,
    TResult? Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult? Function(_FailSentCodeEvent value)? failSentCode,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfNeedPhoneVerificationEvent value)?
        checkIfNeedPhoneVerification,
    TResult Function(_EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(_BackToPhoneNumberEnteringEvent value)?
        backToPhoneNumberEntering,
    TResult Function(_EnterCodeEvent value)? enterCode,
    TResult Function(_SuccessfullySentCodeEvent value)? successfullySentCode,
    TResult Function(_FailSentCodeEvent value)? failSentCode,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements VerifyPhoneEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
mixin _$VerifyPhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneStateCopyWith<$Res> {
  factory $VerifyPhoneStateCopyWith(
          VerifyPhoneState value, $Res Function(VerifyPhoneState) then) =
      _$VerifyPhoneStateCopyWithImpl<$Res, VerifyPhoneState>;
}

/// @nodoc
class _$VerifyPhoneStateCopyWithImpl<$Res, $Val extends VerifyPhoneState>
    implements $VerifyPhoneStateCopyWith<$Res> {
  _$VerifyPhoneStateCopyWithImpl(this._value, this._then);

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
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'VerifyPhoneState.initial()';
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
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
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
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends VerifyPhoneState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_NeedsPhoneVerificationStateCopyWith<$Res> {
  factory _$$_NeedsPhoneVerificationStateCopyWith(
          _$_NeedsPhoneVerificationState value,
          $Res Function(_$_NeedsPhoneVerificationState) then) =
      __$$_NeedsPhoneVerificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NeedsPhoneVerificationStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_NeedsPhoneVerificationState>
    implements _$$_NeedsPhoneVerificationStateCopyWith<$Res> {
  __$$_NeedsPhoneVerificationStateCopyWithImpl(
      _$_NeedsPhoneVerificationState _value,
      $Res Function(_$_NeedsPhoneVerificationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NeedsPhoneVerificationState extends _NeedsPhoneVerificationState {
  const _$_NeedsPhoneVerificationState() : super._();

  @override
  String toString() {
    return 'VerifyPhoneState.needsPhoneVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeedsPhoneVerificationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return needsPhoneVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return needsPhoneVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (needsPhoneVerification != null) {
      return needsPhoneVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return needsPhoneVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return needsPhoneVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (needsPhoneVerification != null) {
      return needsPhoneVerification(this);
    }
    return orElse();
  }
}

abstract class _NeedsPhoneVerificationState extends VerifyPhoneState {
  const factory _NeedsPhoneVerificationState() = _$_NeedsPhoneVerificationState;
  const _NeedsPhoneVerificationState._() : super._();
}

/// @nodoc
abstract class _$$_RequestedPhoneConfirmationStateCopyWith<$Res> {
  factory _$$_RequestedPhoneConfirmationStateCopyWith(
          _$_RequestedPhoneConfirmationState value,
          $Res Function(_$_RequestedPhoneConfirmationState) then) =
      __$$_RequestedPhoneConfirmationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_RequestedPhoneConfirmationStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res,
        _$_RequestedPhoneConfirmationState>
    implements _$$_RequestedPhoneConfirmationStateCopyWith<$Res> {
  __$$_RequestedPhoneConfirmationStateCopyWithImpl(
      _$_RequestedPhoneConfirmationState _value,
      $Res Function(_$_RequestedPhoneConfirmationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_RequestedPhoneConfirmationState(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestedPhoneConfirmationState
    extends _RequestedPhoneConfirmationState {
  const _$_RequestedPhoneConfirmationState({required this.phone}) : super._();

  @override
  final String phone;

  @override
  String toString() {
    return 'VerifyPhoneState.requestedPhoneConfirmation(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestedPhoneConfirmationState &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestedPhoneConfirmationStateCopyWith<
          _$_RequestedPhoneConfirmationState>
      get copyWith => __$$_RequestedPhoneConfirmationStateCopyWithImpl<
          _$_RequestedPhoneConfirmationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return requestedPhoneConfirmation(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return requestedPhoneConfirmation?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (requestedPhoneConfirmation != null) {
      return requestedPhoneConfirmation(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return requestedPhoneConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return requestedPhoneConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (requestedPhoneConfirmation != null) {
      return requestedPhoneConfirmation(this);
    }
    return orElse();
  }
}

abstract class _RequestedPhoneConfirmationState extends VerifyPhoneState {
  const factory _RequestedPhoneConfirmationState(
      {required final String phone}) = _$_RequestedPhoneConfirmationState;
  const _RequestedPhoneConfirmationState._() : super._();

  String get phone;
  @JsonKey(ignore: true)
  _$$_RequestedPhoneConfirmationStateCopyWith<
          _$_RequestedPhoneConfirmationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CodeSentStateCopyWith<$Res> {
  factory _$$_CodeSentStateCopyWith(
          _$_CodeSentState value, $Res Function(_$_CodeSentState) then) =
      __$$_CodeSentStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, String phone});
}

/// @nodoc
class __$$_CodeSentStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_CodeSentState>
    implements _$$_CodeSentStateCopyWith<$Res> {
  __$$_CodeSentStateCopyWithImpl(
      _$_CodeSentState _value, $Res Function(_$_CodeSentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? phone = null,
  }) {
    return _then(_$_CodeSentState(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeSentState extends _CodeSentState {
  const _$_CodeSentState({required this.verificationId, required this.phone})
      : super._();

  @override
  final String verificationId;
  @override
  final String phone;

  @override
  String toString() {
    return 'VerifyPhoneState.codeSent(verificationId: $verificationId, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeSentState &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeSentStateCopyWith<_$_CodeSentState> get copyWith =>
      __$$_CodeSentStateCopyWithImpl<_$_CodeSentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return codeSent(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return codeSent?.call(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSentState extends VerifyPhoneState {
  const factory _CodeSentState(
      {required final String verificationId,
      required final String phone}) = _$_CodeSentState;
  const _CodeSentState._() : super._();

  String get verificationId;
  String get phone;
  @JsonKey(ignore: true)
  _$$_CodeSentStateCopyWith<_$_CodeSentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedToSendCodeStateCopyWith<$Res> {
  factory _$$_FailedToSendCodeStateCopyWith(_$_FailedToSendCodeState value,
          $Res Function(_$_FailedToSendCodeState) then) =
      __$$_FailedToSendCodeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailedToSendCodeStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_FailedToSendCodeState>
    implements _$$_FailedToSendCodeStateCopyWith<$Res> {
  __$$_FailedToSendCodeStateCopyWithImpl(_$_FailedToSendCodeState _value,
      $Res Function(_$_FailedToSendCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FailedToSendCodeState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FailedToSendCodeState extends _FailedToSendCodeState {
  const _$_FailedToSendCodeState({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VerifyPhoneState.failedToSendCode(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailedToSendCodeState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedToSendCodeStateCopyWith<_$_FailedToSendCodeState> get copyWith =>
      __$$_FailedToSendCodeStateCopyWithImpl<_$_FailedToSendCodeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return failedToSendCode(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return failedToSendCode?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (failedToSendCode != null) {
      return failedToSendCode(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return failedToSendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return failedToSendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (failedToSendCode != null) {
      return failedToSendCode(this);
    }
    return orElse();
  }
}

abstract class _FailedToSendCodeState extends VerifyPhoneState {
  const factory _FailedToSendCodeState({required final Failure failure}) =
      _$_FailedToSendCodeState;
  const _FailedToSendCodeState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FailedToSendCodeStateCopyWith<_$_FailedToSendCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WrongCodeStateCopyWith<$Res> {
  factory _$$_WrongCodeStateCopyWith(
          _$_WrongCodeState value, $Res Function(_$_WrongCodeState) then) =
      __$$_WrongCodeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_WrongCodeStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_WrongCodeState>
    implements _$$_WrongCodeStateCopyWith<$Res> {
  __$$_WrongCodeStateCopyWithImpl(
      _$_WrongCodeState _value, $Res Function(_$_WrongCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_WrongCodeState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_WrongCodeState extends _WrongCodeState {
  const _$_WrongCodeState({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VerifyPhoneState.wrongCode(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WrongCodeState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WrongCodeStateCopyWith<_$_WrongCodeState> get copyWith =>
      __$$_WrongCodeStateCopyWithImpl<_$_WrongCodeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return wrongCode(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return wrongCode?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (wrongCode != null) {
      return wrongCode(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return wrongCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return wrongCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (wrongCode != null) {
      return wrongCode(this);
    }
    return orElse();
  }
}

abstract class _WrongCodeState extends VerifyPhoneState {
  const factory _WrongCodeState({required final Failure failure}) =
      _$_WrongCodeState;
  const _WrongCodeState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_WrongCodeStateCopyWith<_$_WrongCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PassedStateCopyWith<$Res> {
  factory _$$_PassedStateCopyWith(
          _$_PassedState value, $Res Function(_$_PassedState) then) =
      __$$_PassedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PassedStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$_PassedState>
    implements _$$_PassedStateCopyWith<$Res> {
  __$$_PassedStateCopyWithImpl(
      _$_PassedState _value, $Res Function(_$_PassedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PassedState extends _PassedState {
  const _$_PassedState() : super._();

  @override
  String toString() {
    return 'VerifyPhoneState.passed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PassedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() needsPhoneVerification,
    required TResult Function(String phone) requestedPhoneConfirmation,
    required TResult Function(String verificationId, String phone) codeSent,
    required TResult Function(Failure failure) failedToSendCode,
    required TResult Function(Failure failure) wrongCode,
    required TResult Function() passed,
  }) {
    return passed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? needsPhoneVerification,
    TResult? Function(String phone)? requestedPhoneConfirmation,
    TResult? Function(String verificationId, String phone)? codeSent,
    TResult? Function(Failure failure)? failedToSendCode,
    TResult? Function(Failure failure)? wrongCode,
    TResult? Function()? passed,
  }) {
    return passed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? needsPhoneVerification,
    TResult Function(String phone)? requestedPhoneConfirmation,
    TResult Function(String verificationId, String phone)? codeSent,
    TResult Function(Failure failure)? failedToSendCode,
    TResult Function(Failure failure)? wrongCode,
    TResult Function()? passed,
    required TResult orElse(),
  }) {
    if (passed != null) {
      return passed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_NeedsPhoneVerificationState value)
        needsPhoneVerification,
    required TResult Function(_RequestedPhoneConfirmationState value)
        requestedPhoneConfirmation,
    required TResult Function(_CodeSentState value) codeSent,
    required TResult Function(_FailedToSendCodeState value) failedToSendCode,
    required TResult Function(_WrongCodeState value) wrongCode,
    required TResult Function(_PassedState value) passed,
  }) {
    return passed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult? Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult? Function(_CodeSentState value)? codeSent,
    TResult? Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult? Function(_WrongCodeState value)? wrongCode,
    TResult? Function(_PassedState value)? passed,
  }) {
    return passed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_NeedsPhoneVerificationState value)?
        needsPhoneVerification,
    TResult Function(_RequestedPhoneConfirmationState value)?
        requestedPhoneConfirmation,
    TResult Function(_CodeSentState value)? codeSent,
    TResult Function(_FailedToSendCodeState value)? failedToSendCode,
    TResult Function(_WrongCodeState value)? wrongCode,
    TResult Function(_PassedState value)? passed,
    required TResult orElse(),
  }) {
    if (passed != null) {
      return passed(this);
    }
    return orElse();
  }
}

abstract class _PassedState extends VerifyPhoneState {
  const factory _PassedState() = _$_PassedState;
  const _PassedState._() : super._();
}
