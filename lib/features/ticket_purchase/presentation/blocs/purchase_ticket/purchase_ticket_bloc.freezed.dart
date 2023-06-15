// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PurchaseTicketEvent {
  PurchaseIntent get intent => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get receiptEmail => throw _privateConstructorUsedError;
  String get destinationAccount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)
        pay,
    required TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)
        payWithGooglePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult? Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_PayWithGooglePayEvent value) payWithGooglePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_PayWithGooglePayEvent value)? payWithGooglePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_PayWithGooglePayEvent value)? payWithGooglePay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseTicketEventCopyWith<PurchaseTicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseTicketEventCopyWith<$Res> {
  factory $PurchaseTicketEventCopyWith(
          PurchaseTicketEvent value, $Res Function(PurchaseTicketEvent) then) =
      _$PurchaseTicketEventCopyWithImpl<$Res, PurchaseTicketEvent>;
  @useResult
  $Res call(
      {PurchaseIntent intent,
      int amount,
      String currency,
      String description,
      String receiptEmail,
      String destinationAccount});

  $PurchaseIntentCopyWith<$Res> get intent;
}

/// @nodoc
class _$PurchaseTicketEventCopyWithImpl<$Res, $Val extends PurchaseTicketEvent>
    implements $PurchaseTicketEventCopyWith<$Res> {
  _$PurchaseTicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = null,
    Object? receiptEmail = null,
    Object? destinationAccount = null,
  }) {
    return _then(_value.copyWith(
      intent: null == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as PurchaseIntent,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      receiptEmail: null == receiptEmail
          ? _value.receiptEmail
          : receiptEmail // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAccount: null == destinationAccount
          ? _value.destinationAccount
          : destinationAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseIntentCopyWith<$Res> get intent {
    return $PurchaseIntentCopyWith<$Res>(_value.intent, (value) {
      return _then(_value.copyWith(intent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PayEventCopyWith<$Res>
    implements $PurchaseTicketEventCopyWith<$Res> {
  factory _$$_PayEventCopyWith(
          _$_PayEvent value, $Res Function(_$_PayEvent) then) =
      __$$_PayEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PurchaseIntent intent,
      int amount,
      String currency,
      String description,
      String receiptEmail,
      String destinationAccount,
      String paymentMethodId});

  @override
  $PurchaseIntentCopyWith<$Res> get intent;
}

/// @nodoc
class __$$_PayEventCopyWithImpl<$Res>
    extends _$PurchaseTicketEventCopyWithImpl<$Res, _$_PayEvent>
    implements _$$_PayEventCopyWith<$Res> {
  __$$_PayEventCopyWithImpl(
      _$_PayEvent _value, $Res Function(_$_PayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = null,
    Object? receiptEmail = null,
    Object? destinationAccount = null,
    Object? paymentMethodId = null,
  }) {
    return _then(_$_PayEvent(
      intent: null == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as PurchaseIntent,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      receiptEmail: null == receiptEmail
          ? _value.receiptEmail
          : receiptEmail // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAccount: null == destinationAccount
          ? _value.destinationAccount
          : destinationAccount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PayEvent implements _PayEvent {
  const _$_PayEvent(
      {required this.intent,
      required this.amount,
      required this.currency,
      required this.description,
      required this.receiptEmail,
      required this.destinationAccount,
      required this.paymentMethodId});

  @override
  final PurchaseIntent intent;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final String description;
  @override
  final String receiptEmail;
  @override
  final String destinationAccount;
  @override
  final String paymentMethodId;

  @override
  String toString() {
    return 'PurchaseTicketEvent.pay(intent: $intent, amount: $amount, currency: $currency, description: $description, receiptEmail: $receiptEmail, destinationAccount: $destinationAccount, paymentMethodId: $paymentMethodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayEvent &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptEmail, receiptEmail) ||
                other.receiptEmail == receiptEmail) &&
            (identical(other.destinationAccount, destinationAccount) ||
                other.destinationAccount == destinationAccount) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intent, amount, currency,
      description, receiptEmail, destinationAccount, paymentMethodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayEventCopyWith<_$_PayEvent> get copyWith =>
      __$$_PayEventCopyWithImpl<_$_PayEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)
        pay,
    required TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)
        payWithGooglePay,
  }) {
    return pay(intent, amount, currency, description, receiptEmail,
        destinationAccount, paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult? Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
  }) {
    return pay?.call(intent, amount, currency, description, receiptEmail,
        destinationAccount, paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(intent, amount, currency, description, receiptEmail,
          destinationAccount, paymentMethodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_PayWithGooglePayEvent value) payWithGooglePay,
  }) {
    return pay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_PayWithGooglePayEvent value)? payWithGooglePay,
  }) {
    return pay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_PayWithGooglePayEvent value)? payWithGooglePay,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(this);
    }
    return orElse();
  }
}

abstract class _PayEvent implements PurchaseTicketEvent {
  const factory _PayEvent(
      {required final PurchaseIntent intent,
      required final int amount,
      required final String currency,
      required final String description,
      required final String receiptEmail,
      required final String destinationAccount,
      required final String paymentMethodId}) = _$_PayEvent;

  @override
  PurchaseIntent get intent;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get description;
  @override
  String get receiptEmail;
  @override
  String get destinationAccount;
  String get paymentMethodId;
  @override
  @JsonKey(ignore: true)
  _$$_PayEventCopyWith<_$_PayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PayWithGooglePayEventCopyWith<$Res>
    implements $PurchaseTicketEventCopyWith<$Res> {
  factory _$$_PayWithGooglePayEventCopyWith(_$_PayWithGooglePayEvent value,
          $Res Function(_$_PayWithGooglePayEvent) then) =
      __$$_PayWithGooglePayEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      PurchaseIntent intent,
      int amount,
      String currency,
      String description,
      String receiptEmail,
      String destinationAccount});

  @override
  $PurchaseIntentCopyWith<$Res> get intent;
}

/// @nodoc
class __$$_PayWithGooglePayEventCopyWithImpl<$Res>
    extends _$PurchaseTicketEventCopyWithImpl<$Res, _$_PayWithGooglePayEvent>
    implements _$$_PayWithGooglePayEventCopyWith<$Res> {
  __$$_PayWithGooglePayEventCopyWithImpl(_$_PayWithGooglePayEvent _value,
      $Res Function(_$_PayWithGooglePayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? intent = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = null,
    Object? receiptEmail = null,
    Object? destinationAccount = null,
  }) {
    return _then(_$_PayWithGooglePayEvent(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      intent: null == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as PurchaseIntent,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      receiptEmail: null == receiptEmail
          ? _value.receiptEmail
          : receiptEmail // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAccount: null == destinationAccount
          ? _value.destinationAccount
          : destinationAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PayWithGooglePayEvent implements _PayWithGooglePayEvent {
  const _$_PayWithGooglePayEvent(
      {required this.token,
      required this.intent,
      required this.amount,
      required this.currency,
      required this.description,
      required this.receiptEmail,
      required this.destinationAccount});

  @override
  final String token;
  @override
  final PurchaseIntent intent;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final String description;
  @override
  final String receiptEmail;
  @override
  final String destinationAccount;

  @override
  String toString() {
    return 'PurchaseTicketEvent.payWithGooglePay(token: $token, intent: $intent, amount: $amount, currency: $currency, description: $description, receiptEmail: $receiptEmail, destinationAccount: $destinationAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayWithGooglePayEvent &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptEmail, receiptEmail) ||
                other.receiptEmail == receiptEmail) &&
            (identical(other.destinationAccount, destinationAccount) ||
                other.destinationAccount == destinationAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, intent, amount, currency,
      description, receiptEmail, destinationAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayWithGooglePayEventCopyWith<_$_PayWithGooglePayEvent> get copyWith =>
      __$$_PayWithGooglePayEventCopyWithImpl<_$_PayWithGooglePayEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)
        pay,
    required TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)
        payWithGooglePay,
  }) {
    return payWithGooglePay(token, intent, amount, currency, description,
        receiptEmail, destinationAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult? Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
  }) {
    return payWithGooglePay?.call(token, intent, amount, currency, description,
        receiptEmail, destinationAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount,
            String paymentMethodId)?
        pay,
    TResult Function(
            String token,
            PurchaseIntent intent,
            int amount,
            String currency,
            String description,
            String receiptEmail,
            String destinationAccount)?
        payWithGooglePay,
    required TResult orElse(),
  }) {
    if (payWithGooglePay != null) {
      return payWithGooglePay(token, intent, amount, currency, description,
          receiptEmail, destinationAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayEvent value) pay,
    required TResult Function(_PayWithGooglePayEvent value) payWithGooglePay,
  }) {
    return payWithGooglePay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayEvent value)? pay,
    TResult? Function(_PayWithGooglePayEvent value)? payWithGooglePay,
  }) {
    return payWithGooglePay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayEvent value)? pay,
    TResult Function(_PayWithGooglePayEvent value)? payWithGooglePay,
    required TResult orElse(),
  }) {
    if (payWithGooglePay != null) {
      return payWithGooglePay(this);
    }
    return orElse();
  }
}

abstract class _PayWithGooglePayEvent implements PurchaseTicketEvent {
  const factory _PayWithGooglePayEvent(
      {required final String token,
      required final PurchaseIntent intent,
      required final int amount,
      required final String currency,
      required final String description,
      required final String receiptEmail,
      required final String destinationAccount}) = _$_PayWithGooglePayEvent;

  String get token;
  @override
  PurchaseIntent get intent;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get description;
  @override
  String get receiptEmail;
  @override
  String get destinationAccount;
  @override
  @JsonKey(ignore: true)
  _$$_PayWithGooglePayEventCopyWith<_$_PayWithGooglePayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PurchaseTicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paying,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paying,
    TResult? Function()? success,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paying,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_PayingState value) paying,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_PayingState value)? paying,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_PayingState value)? paying,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseTicketStateCopyWith<$Res> {
  factory $PurchaseTicketStateCopyWith(
          PurchaseTicketState value, $Res Function(PurchaseTicketState) then) =
      _$PurchaseTicketStateCopyWithImpl<$Res, PurchaseTicketState>;
}

/// @nodoc
class _$PurchaseTicketStateCopyWithImpl<$Res, $Val extends PurchaseTicketState>
    implements $PurchaseTicketStateCopyWith<$Res> {
  _$PurchaseTicketStateCopyWithImpl(this._value, this._then);

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
    extends _$PurchaseTicketStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'PurchaseTicketState.initial()';
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
    required TResult Function() paying,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paying,
    TResult? Function()? success,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paying,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_PayingState value) paying,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_PayingState value)? paying,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_PayingState value)? paying,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends PurchaseTicketState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_PayingStateCopyWith<$Res> {
  factory _$$_PayingStateCopyWith(
          _$_PayingState value, $Res Function(_$_PayingState) then) =
      __$$_PayingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PayingStateCopyWithImpl<$Res>
    extends _$PurchaseTicketStateCopyWithImpl<$Res, _$_PayingState>
    implements _$$_PayingStateCopyWith<$Res> {
  __$$_PayingStateCopyWithImpl(
      _$_PayingState _value, $Res Function(_$_PayingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PayingState extends _PayingState {
  const _$_PayingState() : super._();

  @override
  String toString() {
    return 'PurchaseTicketState.paying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PayingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paying,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return paying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paying,
    TResult? Function()? success,
    TResult? Function(Failure failure)? error,
  }) {
    return paying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paying,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (paying != null) {
      return paying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_PayingState value) paying,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return paying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_PayingState value)? paying,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return paying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_PayingState value)? paying,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (paying != null) {
      return paying(this);
    }
    return orElse();
  }
}

abstract class _PayingState extends PurchaseTicketState {
  const factory _PayingState() = _$_PayingState;
  const _PayingState._() : super._();
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$PurchaseTicketStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessState extends _SuccessState {
  const _$_SuccessState() : super._();

  @override
  String toString() {
    return 'PurchaseTicketState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paying,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paying,
    TResult? Function()? success,
    TResult? Function(Failure failure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paying,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_PayingState value) paying,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_PayingState value)? paying,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_PayingState value)? paying,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState extends PurchaseTicketState {
  const factory _SuccessState() = _$_SuccessState;
  const _SuccessState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$PurchaseTicketStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ErrorState(
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

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PurchaseTicketState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paying,
    required TResult Function() success,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paying,
    TResult? Function()? success,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paying,
    TResult Function()? success,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_PayingState value) paying,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_PayingState value)? paying,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_PayingState value)? paying,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends PurchaseTicketState {
  const factory _ErrorState({required final Failure failure}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
