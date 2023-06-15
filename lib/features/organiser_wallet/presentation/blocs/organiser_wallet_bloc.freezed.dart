// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organiser_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrganiserWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganiserWalletEventCopyWith<$Res> {
  factory $OrganiserWalletEventCopyWith(OrganiserWalletEvent value,
          $Res Function(OrganiserWalletEvent) then) =
      _$OrganiserWalletEventCopyWithImpl<$Res, OrganiserWalletEvent>;
}

/// @nodoc
class _$OrganiserWalletEventCopyWithImpl<$Res,
        $Val extends OrganiserWalletEvent>
    implements $OrganiserWalletEventCopyWith<$Res> {
  _$OrganiserWalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchOrganiserWalletEventCopyWith<$Res> {
  factory _$$_FetchOrganiserWalletEventCopyWith(
          _$_FetchOrganiserWalletEvent value,
          $Res Function(_$_FetchOrganiserWalletEvent) then) =
      __$$_FetchOrganiserWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_FetchOrganiserWalletEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res,
        _$_FetchOrganiserWalletEvent>
    implements _$$_FetchOrganiserWalletEventCopyWith<$Res> {
  __$$_FetchOrganiserWalletEventCopyWithImpl(
      _$_FetchOrganiserWalletEvent _value,
      $Res Function(_$_FetchOrganiserWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_FetchOrganiserWalletEvent(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchOrganiserWalletEvent implements _FetchOrganiserWalletEvent {
  const _$_FetchOrganiserWalletEvent({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'OrganiserWalletEvent.fetchOrganiserWallet(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOrganiserWalletEvent &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchOrganiserWalletEventCopyWith<_$_FetchOrganiserWalletEvent>
      get copyWith => __$$_FetchOrganiserWalletEventCopyWithImpl<
          _$_FetchOrganiserWalletEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return fetchOrganiserWallet(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return fetchOrganiserWallet?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchOrganiserWallet != null) {
      return fetchOrganiserWallet(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return fetchOrganiserWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return fetchOrganiserWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchOrganiserWallet != null) {
      return fetchOrganiserWallet(this);
    }
    return orElse();
  }
}

abstract class _FetchOrganiserWalletEvent implements OrganiserWalletEvent {
  const factory _FetchOrganiserWalletEvent({required final String userUid}) =
      _$_FetchOrganiserWalletEvent;

  String get userUid;
  @JsonKey(ignore: true)
  _$$_FetchOrganiserWalletEventCopyWith<_$_FetchOrganiserWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOrganiserWalletEventCopyWith<$Res> {
  factory _$$_CreateOrganiserWalletEventCopyWith(
          _$_CreateOrganiserWalletEvent value,
          $Res Function(_$_CreateOrganiserWalletEvent) then) =
      __$$_CreateOrganiserWalletEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid, String email});
}

/// @nodoc
class __$$_CreateOrganiserWalletEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res,
        _$_CreateOrganiserWalletEvent>
    implements _$$_CreateOrganiserWalletEventCopyWith<$Res> {
  __$$_CreateOrganiserWalletEventCopyWithImpl(
      _$_CreateOrganiserWalletEvent _value,
      $Res Function(_$_CreateOrganiserWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? email = null,
  }) {
    return _then(_$_CreateOrganiserWalletEvent(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateOrganiserWalletEvent implements _CreateOrganiserWalletEvent {
  const _$_CreateOrganiserWalletEvent(
      {required this.userUid, required this.email});

  @override
  final String userUid;
  @override
  final String email;

  @override
  String toString() {
    return 'OrganiserWalletEvent.createOrganiserWallet(userUid: $userUid, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrganiserWalletEvent &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrganiserWalletEventCopyWith<_$_CreateOrganiserWalletEvent>
      get copyWith => __$$_CreateOrganiserWalletEventCopyWithImpl<
          _$_CreateOrganiserWalletEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return createOrganiserWallet(userUid, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return createOrganiserWallet?.call(userUid, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (createOrganiserWallet != null) {
      return createOrganiserWallet(userUid, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return createOrganiserWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return createOrganiserWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (createOrganiserWallet != null) {
      return createOrganiserWallet(this);
    }
    return orElse();
  }
}

abstract class _CreateOrganiserWalletEvent implements OrganiserWalletEvent {
  const factory _CreateOrganiserWalletEvent(
      {required final String userUid,
      required final String email}) = _$_CreateOrganiserWalletEvent;

  String get userUid;
  String get email;
  @JsonKey(ignore: true)
  _$$_CreateOrganiserWalletEventCopyWith<_$_CreateOrganiserWalletEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPayoutsEventCopyWith<$Res> {
  factory _$$_FetchPayoutsEventCopyWith(_$_FetchPayoutsEvent value,
          $Res Function(_$_FetchPayoutsEvent) then) =
      __$$_FetchPayoutsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountId});
}

/// @nodoc
class __$$_FetchPayoutsEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res, _$_FetchPayoutsEvent>
    implements _$$_FetchPayoutsEventCopyWith<$Res> {
  __$$_FetchPayoutsEventCopyWithImpl(
      _$_FetchPayoutsEvent _value, $Res Function(_$_FetchPayoutsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$_FetchPayoutsEvent(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchPayoutsEvent implements _FetchPayoutsEvent {
  const _$_FetchPayoutsEvent({required this.accountId});

  @override
  final String accountId;

  @override
  String toString() {
    return 'OrganiserWalletEvent.fetchPayouts(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPayoutsEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPayoutsEventCopyWith<_$_FetchPayoutsEvent> get copyWith =>
      __$$_FetchPayoutsEventCopyWithImpl<_$_FetchPayoutsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return fetchPayouts(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return fetchPayouts?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchPayouts != null) {
      return fetchPayouts(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return fetchPayouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return fetchPayouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchPayouts != null) {
      return fetchPayouts(this);
    }
    return orElse();
  }
}

abstract class _FetchPayoutsEvent implements OrganiserWalletEvent {
  const factory _FetchPayoutsEvent({required final String accountId}) =
      _$_FetchPayoutsEvent;

  String get accountId;
  @JsonKey(ignore: true)
  _$$_FetchPayoutsEventCopyWith<_$_FetchPayoutsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchBalanceEventCopyWith<$Res> {
  factory _$$_FetchBalanceEventCopyWith(_$_FetchBalanceEvent value,
          $Res Function(_$_FetchBalanceEvent) then) =
      __$$_FetchBalanceEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountId});
}

/// @nodoc
class __$$_FetchBalanceEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res, _$_FetchBalanceEvent>
    implements _$$_FetchBalanceEventCopyWith<$Res> {
  __$$_FetchBalanceEventCopyWithImpl(
      _$_FetchBalanceEvent _value, $Res Function(_$_FetchBalanceEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$_FetchBalanceEvent(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchBalanceEvent implements _FetchBalanceEvent {
  const _$_FetchBalanceEvent({required this.accountId});

  @override
  final String accountId;

  @override
  String toString() {
    return 'OrganiserWalletEvent.fetchBalance(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchBalanceEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchBalanceEventCopyWith<_$_FetchBalanceEvent> get copyWith =>
      __$$_FetchBalanceEventCopyWithImpl<_$_FetchBalanceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return fetchBalance(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return fetchBalance?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return fetchBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return fetchBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance(this);
    }
    return orElse();
  }
}

abstract class _FetchBalanceEvent implements OrganiserWalletEvent {
  const factory _FetchBalanceEvent({required final String accountId}) =
      _$_FetchBalanceEvent;

  String get accountId;
  @JsonKey(ignore: true)
  _$$_FetchBalanceEventCopyWith<_$_FetchBalanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenerateAccountLinkEventCopyWith<$Res> {
  factory _$$_GenerateAccountLinkEventCopyWith(
          _$_GenerateAccountLinkEvent value,
          $Res Function(_$_GenerateAccountLinkEvent) then) =
      __$$_GenerateAccountLinkEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountId});
}

/// @nodoc
class __$$_GenerateAccountLinkEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res,
        _$_GenerateAccountLinkEvent>
    implements _$$_GenerateAccountLinkEventCopyWith<$Res> {
  __$$_GenerateAccountLinkEventCopyWithImpl(_$_GenerateAccountLinkEvent _value,
      $Res Function(_$_GenerateAccountLinkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$_GenerateAccountLinkEvent(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenerateAccountLinkEvent implements _GenerateAccountLinkEvent {
  const _$_GenerateAccountLinkEvent({required this.accountId});

  @override
  final String accountId;

  @override
  String toString() {
    return 'OrganiserWalletEvent.generateAccountLink(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateAccountLinkEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateAccountLinkEventCopyWith<_$_GenerateAccountLinkEvent>
      get copyWith => __$$_GenerateAccountLinkEventCopyWithImpl<
          _$_GenerateAccountLinkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return generateAccountLink(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return generateAccountLink?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (generateAccountLink != null) {
      return generateAccountLink(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return generateAccountLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return generateAccountLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (generateAccountLink != null) {
      return generateAccountLink(this);
    }
    return orElse();
  }
}

abstract class _GenerateAccountLinkEvent implements OrganiserWalletEvent {
  const factory _GenerateAccountLinkEvent({required final String accountId}) =
      _$_GenerateAccountLinkEvent;

  String get accountId;
  @JsonKey(ignore: true)
  _$$_GenerateAccountLinkEventCopyWith<_$_GenerateAccountLinkEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestPayoutEventCopyWith<$Res> {
  factory _$$_RequestPayoutEventCopyWith(_$_RequestPayoutEvent value,
          $Res Function(_$_RequestPayoutEvent) then) =
      __$$_RequestPayoutEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$_RequestPayoutEventCopyWithImpl<$Res>
    extends _$OrganiserWalletEventCopyWithImpl<$Res, _$_RequestPayoutEvent>
    implements _$$_RequestPayoutEventCopyWith<$Res> {
  __$$_RequestPayoutEventCopyWithImpl(
      _$_RequestPayoutEvent _value, $Res Function(_$_RequestPayoutEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_RequestPayoutEvent(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestPayoutEvent implements _RequestPayoutEvent {
  const _$_RequestPayoutEvent({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'OrganiserWalletEvent.requestPayout(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPayoutEvent &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPayoutEventCopyWith<_$_RequestPayoutEvent> get copyWith =>
      __$$_RequestPayoutEventCopyWithImpl<_$_RequestPayoutEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchOrganiserWallet,
    required TResult Function(String userUid, String email)
        createOrganiserWallet,
    required TResult Function(String accountId) fetchPayouts,
    required TResult Function(String accountId) fetchBalance,
    required TResult Function(String accountId) generateAccountLink,
    required TResult Function(int amount) requestPayout,
  }) {
    return requestPayout(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchOrganiserWallet,
    TResult? Function(String userUid, String email)? createOrganiserWallet,
    TResult? Function(String accountId)? fetchPayouts,
    TResult? Function(String accountId)? fetchBalance,
    TResult? Function(String accountId)? generateAccountLink,
    TResult? Function(int amount)? requestPayout,
  }) {
    return requestPayout?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchOrganiserWallet,
    TResult Function(String userUid, String email)? createOrganiserWallet,
    TResult Function(String accountId)? fetchPayouts,
    TResult Function(String accountId)? fetchBalance,
    TResult Function(String accountId)? generateAccountLink,
    TResult Function(int amount)? requestPayout,
    required TResult orElse(),
  }) {
    if (requestPayout != null) {
      return requestPayout(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrganiserWalletEvent value)
        fetchOrganiserWallet,
    required TResult Function(_CreateOrganiserWalletEvent value)
        createOrganiserWallet,
    required TResult Function(_FetchPayoutsEvent value) fetchPayouts,
    required TResult Function(_FetchBalanceEvent value) fetchBalance,
    required TResult Function(_GenerateAccountLinkEvent value)
        generateAccountLink,
    required TResult Function(_RequestPayoutEvent value) requestPayout,
  }) {
    return requestPayout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult? Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult? Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult? Function(_FetchBalanceEvent value)? fetchBalance,
    TResult? Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult? Function(_RequestPayoutEvent value)? requestPayout,
  }) {
    return requestPayout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrganiserWalletEvent value)? fetchOrganiserWallet,
    TResult Function(_CreateOrganiserWalletEvent value)? createOrganiserWallet,
    TResult Function(_FetchPayoutsEvent value)? fetchPayouts,
    TResult Function(_FetchBalanceEvent value)? fetchBalance,
    TResult Function(_GenerateAccountLinkEvent value)? generateAccountLink,
    TResult Function(_RequestPayoutEvent value)? requestPayout,
    required TResult orElse(),
  }) {
    if (requestPayout != null) {
      return requestPayout(this);
    }
    return orElse();
  }
}

abstract class _RequestPayoutEvent implements OrganiserWalletEvent {
  const factory _RequestPayoutEvent({required final int amount}) =
      _$_RequestPayoutEvent;

  int get amount;
  @JsonKey(ignore: true)
  _$$_RequestPayoutEventCopyWith<_$_RequestPayoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrganiserWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganiserWalletStateCopyWith<$Res> {
  factory $OrganiserWalletStateCopyWith(OrganiserWalletState value,
          $Res Function(OrganiserWalletState) then) =
      _$OrganiserWalletStateCopyWithImpl<$Res, OrganiserWalletState>;
}

/// @nodoc
class _$OrganiserWalletStateCopyWithImpl<$Res,
        $Val extends OrganiserWalletState>
    implements $OrganiserWalletStateCopyWith<$Res> {
  _$OrganiserWalletStateCopyWithImpl(this._value, this._then);

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
    extends _$OrganiserWalletStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'OrganiserWalletState.initial()';
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
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
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
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends OrganiserWalletState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_WalletNotCreatedStateCopyWith<$Res> {
  factory _$$_WalletNotCreatedStateCopyWith(_$_WalletNotCreatedState value,
          $Res Function(_$_WalletNotCreatedState) then) =
      __$$_WalletNotCreatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletNotCreatedStateCopyWithImpl<$Res>
    extends _$OrganiserWalletStateCopyWithImpl<$Res, _$_WalletNotCreatedState>
    implements _$$_WalletNotCreatedStateCopyWith<$Res> {
  __$$_WalletNotCreatedStateCopyWithImpl(_$_WalletNotCreatedState _value,
      $Res Function(_$_WalletNotCreatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WalletNotCreatedState extends _WalletNotCreatedState {
  const _$_WalletNotCreatedState() : super._();

  @override
  String toString() {
    return 'OrganiserWalletState.walletNotCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalletNotCreatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return walletNotCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return walletNotCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) {
    if (walletNotCreated != null) {
      return walletNotCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return walletNotCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return walletNotCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (walletNotCreated != null) {
      return walletNotCreated(this);
    }
    return orElse();
  }
}

abstract class _WalletNotCreatedState extends OrganiserWalletState {
  const factory _WalletNotCreatedState() = _$_WalletNotCreatedState;
  const _WalletNotCreatedState._() : super._();
}

/// @nodoc
abstract class _$$_WalletNeedsMoreCapabilitiesStateCopyWith<$Res> {
  factory _$$_WalletNeedsMoreCapabilitiesStateCopyWith(
          _$_WalletNeedsMoreCapabilitiesState value,
          $Res Function(_$_WalletNeedsMoreCapabilitiesState) then) =
      __$$_WalletNeedsMoreCapabilitiesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrganiserAccount account});

  $OrganiserAccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_WalletNeedsMoreCapabilitiesStateCopyWithImpl<$Res>
    extends _$OrganiserWalletStateCopyWithImpl<$Res,
        _$_WalletNeedsMoreCapabilitiesState>
    implements _$$_WalletNeedsMoreCapabilitiesStateCopyWith<$Res> {
  __$$_WalletNeedsMoreCapabilitiesStateCopyWithImpl(
      _$_WalletNeedsMoreCapabilitiesState _value,
      $Res Function(_$_WalletNeedsMoreCapabilitiesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$_WalletNeedsMoreCapabilitiesState(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as OrganiserAccount,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganiserAccountCopyWith<$Res> get account {
    return $OrganiserAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$_WalletNeedsMoreCapabilitiesState
    extends _WalletNeedsMoreCapabilitiesState {
  const _$_WalletNeedsMoreCapabilitiesState({required this.account})
      : super._();

  @override
  final OrganiserAccount account;

  @override
  String toString() {
    return 'OrganiserWalletState.walletNeedsMoreCapabilities(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletNeedsMoreCapabilitiesState &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletNeedsMoreCapabilitiesStateCopyWith<
          _$_WalletNeedsMoreCapabilitiesState>
      get copyWith => __$$_WalletNeedsMoreCapabilitiesStateCopyWithImpl<
          _$_WalletNeedsMoreCapabilitiesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return walletNeedsMoreCapabilities(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return walletNeedsMoreCapabilities?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) {
    if (walletNeedsMoreCapabilities != null) {
      return walletNeedsMoreCapabilities(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return walletNeedsMoreCapabilities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return walletNeedsMoreCapabilities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (walletNeedsMoreCapabilities != null) {
      return walletNeedsMoreCapabilities(this);
    }
    return orElse();
  }
}

abstract class _WalletNeedsMoreCapabilitiesState extends OrganiserWalletState {
  const factory _WalletNeedsMoreCapabilitiesState(
          {required final OrganiserAccount account}) =
      _$_WalletNeedsMoreCapabilitiesState;
  const _WalletNeedsMoreCapabilitiesState._() : super._();

  OrganiserAccount get account;
  @JsonKey(ignore: true)
  _$$_WalletNeedsMoreCapabilitiesStateCopyWith<
          _$_WalletNeedsMoreCapabilitiesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GeneratedAccountLinkStateCopyWith<$Res> {
  factory _$$_GeneratedAccountLinkStateCopyWith(
          _$_GeneratedAccountLinkState value,
          $Res Function(_$_GeneratedAccountLinkState) then) =
      __$$_GeneratedAccountLinkStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrganiserAccount account, String link});

  $OrganiserAccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_GeneratedAccountLinkStateCopyWithImpl<$Res>
    extends _$OrganiserWalletStateCopyWithImpl<$Res,
        _$_GeneratedAccountLinkState>
    implements _$$_GeneratedAccountLinkStateCopyWith<$Res> {
  __$$_GeneratedAccountLinkStateCopyWithImpl(
      _$_GeneratedAccountLinkState _value,
      $Res Function(_$_GeneratedAccountLinkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? link = null,
  }) {
    return _then(_$_GeneratedAccountLinkState(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as OrganiserAccount,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganiserAccountCopyWith<$Res> get account {
    return $OrganiserAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$_GeneratedAccountLinkState extends _GeneratedAccountLinkState {
  const _$_GeneratedAccountLinkState(
      {required this.account, required this.link})
      : super._();

  @override
  final OrganiserAccount account;
  @override
  final String link;

  @override
  String toString() {
    return 'OrganiserWalletState.generatedAccountLink(account: $account, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratedAccountLinkState &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneratedAccountLinkStateCopyWith<_$_GeneratedAccountLinkState>
      get copyWith => __$$_GeneratedAccountLinkStateCopyWithImpl<
          _$_GeneratedAccountLinkState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return generatedAccountLink(account, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return generatedAccountLink?.call(account, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) {
    if (generatedAccountLink != null) {
      return generatedAccountLink(account, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return generatedAccountLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return generatedAccountLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (generatedAccountLink != null) {
      return generatedAccountLink(this);
    }
    return orElse();
  }
}

abstract class _GeneratedAccountLinkState extends OrganiserWalletState {
  const factory _GeneratedAccountLinkState(
      {required final OrganiserAccount account,
      required final String link}) = _$_GeneratedAccountLinkState;
  const _GeneratedAccountLinkState._() : super._();

  OrganiserAccount get account;
  String get link;
  @JsonKey(ignore: true)
  _$$_GeneratedAccountLinkStateCopyWith<_$_GeneratedAccountLinkState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalletInitializedStateCopyWith<$Res> {
  factory _$$_WalletInitializedStateCopyWith(_$_WalletInitializedState value,
          $Res Function(_$_WalletInitializedState) then) =
      __$$_WalletInitializedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrganiserAccount account,
      List<Payout> payouts,
      AccountBalance accountBalance});

  $OrganiserAccountCopyWith<$Res> get account;
  $AccountBalanceCopyWith<$Res> get accountBalance;
}

/// @nodoc
class __$$_WalletInitializedStateCopyWithImpl<$Res>
    extends _$OrganiserWalletStateCopyWithImpl<$Res, _$_WalletInitializedState>
    implements _$$_WalletInitializedStateCopyWith<$Res> {
  __$$_WalletInitializedStateCopyWithImpl(_$_WalletInitializedState _value,
      $Res Function(_$_WalletInitializedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? payouts = null,
    Object? accountBalance = null,
  }) {
    return _then(_$_WalletInitializedState(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as OrganiserAccount,
      payouts: null == payouts
          ? _value._payouts
          : payouts // ignore: cast_nullable_to_non_nullable
              as List<Payout>,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganiserAccountCopyWith<$Res> get account {
    return $OrganiserAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res> get accountBalance {
    return $AccountBalanceCopyWith<$Res>(_value.accountBalance, (value) {
      return _then(_value.copyWith(accountBalance: value));
    });
  }
}

/// @nodoc

class _$_WalletInitializedState extends _WalletInitializedState {
  const _$_WalletInitializedState(
      {required this.account,
      final List<Payout> payouts = const [],
      this.accountBalance =
          const AccountBalance(pendingBalances: [], availableBalances: [])})
      : _payouts = payouts,
        super._();

  @override
  final OrganiserAccount account;
  final List<Payout> _payouts;
  @override
  @JsonKey()
  List<Payout> get payouts {
    if (_payouts is EqualUnmodifiableListView) return _payouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payouts);
  }

  @override
  @JsonKey()
  final AccountBalance accountBalance;

  @override
  String toString() {
    return 'OrganiserWalletState.walletInitialized(account: $account, payouts: $payouts, accountBalance: $accountBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletInitializedState &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._payouts, _payouts) &&
            (identical(other.accountBalance, accountBalance) ||
                other.accountBalance == accountBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account,
      const DeepCollectionEquality().hash(_payouts), accountBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletInitializedStateCopyWith<_$_WalletInitializedState> get copyWith =>
      __$$_WalletInitializedStateCopyWithImpl<_$_WalletInitializedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return walletInitialized(account, payouts, accountBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return walletInitialized?.call(account, payouts, accountBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) {
    if (walletInitialized != null) {
      return walletInitialized(account, payouts, accountBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return walletInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return walletInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (walletInitialized != null) {
      return walletInitialized(this);
    }
    return orElse();
  }
}

abstract class _WalletInitializedState extends OrganiserWalletState {
  const factory _WalletInitializedState(
      {required final OrganiserAccount account,
      final List<Payout> payouts,
      final AccountBalance accountBalance}) = _$_WalletInitializedState;
  const _WalletInitializedState._() : super._();

  OrganiserAccount get account;
  List<Payout> get payouts;
  AccountBalance get accountBalance;
  @JsonKey(ignore: true)
  _$$_WalletInitializedStateCopyWith<_$_WalletInitializedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedToPayoutStateCopyWith<$Res> {
  factory _$$_FailedToPayoutStateCopyWith(_$_FailedToPayoutState value,
          $Res Function(_$_FailedToPayoutState) then) =
      __$$_FailedToPayoutStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrganiserAccount account,
      List<Payout> payouts,
      AccountBalance accountBalance,
      Failure error});

  $OrganiserAccountCopyWith<$Res> get account;
  $AccountBalanceCopyWith<$Res> get accountBalance;
  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_FailedToPayoutStateCopyWithImpl<$Res>
    extends _$OrganiserWalletStateCopyWithImpl<$Res, _$_FailedToPayoutState>
    implements _$$_FailedToPayoutStateCopyWith<$Res> {
  __$$_FailedToPayoutStateCopyWithImpl(_$_FailedToPayoutState _value,
      $Res Function(_$_FailedToPayoutState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? payouts = null,
    Object? accountBalance = null,
    Object? error = null,
  }) {
    return _then(_$_FailedToPayoutState(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as OrganiserAccount,
      payouts: null == payouts
          ? _value._payouts
          : payouts // ignore: cast_nullable_to_non_nullable
              as List<Payout>,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganiserAccountCopyWith<$Res> get account {
    return $OrganiserAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res> get accountBalance {
    return $AccountBalanceCopyWith<$Res>(_value.accountBalance, (value) {
      return _then(_value.copyWith(accountBalance: value));
    });
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

class _$_FailedToPayoutState extends _FailedToPayoutState {
  const _$_FailedToPayoutState(
      {required this.account,
      final List<Payout> payouts = const [],
      this.accountBalance =
          const AccountBalance(pendingBalances: [], availableBalances: []),
      required this.error})
      : _payouts = payouts,
        super._();

  @override
  final OrganiserAccount account;
  final List<Payout> _payouts;
  @override
  @JsonKey()
  List<Payout> get payouts {
    if (_payouts is EqualUnmodifiableListView) return _payouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payouts);
  }

  @override
  @JsonKey()
  final AccountBalance accountBalance;
  @override
  final Failure error;

  @override
  String toString() {
    return 'OrganiserWalletState.failedToPayout(account: $account, payouts: $payouts, accountBalance: $accountBalance, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailedToPayoutState &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._payouts, _payouts) &&
            (identical(other.accountBalance, accountBalance) ||
                other.accountBalance == accountBalance) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account,
      const DeepCollectionEquality().hash(_payouts), accountBalance, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedToPayoutStateCopyWith<_$_FailedToPayoutState> get copyWith =>
      __$$_FailedToPayoutStateCopyWithImpl<_$_FailedToPayoutState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walletNotCreated,
    required TResult Function(OrganiserAccount account)
        walletNeedsMoreCapabilities,
    required TResult Function(OrganiserAccount account, String link)
        generatedAccountLink,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)
        walletInitialized,
    required TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)
        failedToPayout,
  }) {
    return failedToPayout(account, payouts, accountBalance, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walletNotCreated,
    TResult? Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult? Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult? Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
  }) {
    return failedToPayout?.call(account, payouts, accountBalance, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walletNotCreated,
    TResult Function(OrganiserAccount account)? walletNeedsMoreCapabilities,
    TResult Function(OrganiserAccount account, String link)?
        generatedAccountLink,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance)?
        walletInitialized,
    TResult Function(OrganiserAccount account, List<Payout> payouts,
            AccountBalance accountBalance, Failure error)?
        failedToPayout,
    required TResult orElse(),
  }) {
    if (failedToPayout != null) {
      return failedToPayout(account, payouts, accountBalance, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WalletNotCreatedState value) walletNotCreated,
    required TResult Function(_WalletNeedsMoreCapabilitiesState value)
        walletNeedsMoreCapabilities,
    required TResult Function(_GeneratedAccountLinkState value)
        generatedAccountLink,
    required TResult Function(_WalletInitializedState value) walletInitialized,
    required TResult Function(_FailedToPayoutState value) failedToPayout,
  }) {
    return failedToPayout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult? Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult? Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult? Function(_WalletInitializedState value)? walletInitialized,
    TResult? Function(_FailedToPayoutState value)? failedToPayout,
  }) {
    return failedToPayout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WalletNotCreatedState value)? walletNotCreated,
    TResult Function(_WalletNeedsMoreCapabilitiesState value)?
        walletNeedsMoreCapabilities,
    TResult Function(_GeneratedAccountLinkState value)? generatedAccountLink,
    TResult Function(_WalletInitializedState value)? walletInitialized,
    TResult Function(_FailedToPayoutState value)? failedToPayout,
    required TResult orElse(),
  }) {
    if (failedToPayout != null) {
      return failedToPayout(this);
    }
    return orElse();
  }
}

abstract class _FailedToPayoutState extends OrganiserWalletState {
  const factory _FailedToPayoutState(
      {required final OrganiserAccount account,
      final List<Payout> payouts,
      final AccountBalance accountBalance,
      required final Failure error}) = _$_FailedToPayoutState;
  const _FailedToPayoutState._() : super._();

  OrganiserAccount get account;
  List<Payout> get payouts;
  AccountBalance get accountBalance;
  Failure get error;
  @JsonKey(ignore: true)
  _$$_FailedToPayoutStateCopyWith<_$_FailedToPayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
