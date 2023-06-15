// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentCardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchCards,
    required TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)
        addCard,
    required TResult Function(String paymentMethodId) removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchCards,
    TResult? Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult? Function(String paymentMethodId)? removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchCards,
    TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult Function(String paymentMethodId)? removeCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCardsEvent value) fetchCards,
    required TResult Function(_AddCardEvent value) addCard,
    required TResult Function(_RemoveCardEvent value) removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCardsEvent value)? fetchCards,
    TResult? Function(_AddCardEvent value)? addCard,
    TResult? Function(_RemoveCardEvent value)? removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCardsEvent value)? fetchCards,
    TResult Function(_AddCardEvent value)? addCard,
    TResult Function(_RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardsEventCopyWith<$Res> {
  factory $PaymentCardsEventCopyWith(
          PaymentCardsEvent value, $Res Function(PaymentCardsEvent) then) =
      _$PaymentCardsEventCopyWithImpl<$Res, PaymentCardsEvent>;
}

/// @nodoc
class _$PaymentCardsEventCopyWithImpl<$Res, $Val extends PaymentCardsEvent>
    implements $PaymentCardsEventCopyWith<$Res> {
  _$PaymentCardsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCardsEventCopyWith<$Res> {
  factory _$$_FetchCardsEventCopyWith(
          _$_FetchCardsEvent value, $Res Function(_$_FetchCardsEvent) then) =
      __$$_FetchCardsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_FetchCardsEventCopyWithImpl<$Res>
    extends _$PaymentCardsEventCopyWithImpl<$Res, _$_FetchCardsEvent>
    implements _$$_FetchCardsEventCopyWith<$Res> {
  __$$_FetchCardsEventCopyWithImpl(
      _$_FetchCardsEvent _value, $Res Function(_$_FetchCardsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_FetchCardsEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchCardsEvent implements _FetchCardsEvent {
  const _$_FetchCardsEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'PaymentCardsEvent.fetchCards(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCardsEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCardsEventCopyWith<_$_FetchCardsEvent> get copyWith =>
      __$$_FetchCardsEventCopyWithImpl<_$_FetchCardsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchCards,
    required TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)
        addCard,
    required TResult Function(String paymentMethodId) removeCard,
  }) {
    return fetchCards(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchCards,
    TResult? Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult? Function(String paymentMethodId)? removeCard,
  }) {
    return fetchCards?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchCards,
    TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult Function(String paymentMethodId)? removeCard,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCardsEvent value) fetchCards,
    required TResult Function(_AddCardEvent value) addCard,
    required TResult Function(_RemoveCardEvent value) removeCard,
  }) {
    return fetchCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCardsEvent value)? fetchCards,
    TResult? Function(_AddCardEvent value)? addCard,
    TResult? Function(_RemoveCardEvent value)? removeCard,
  }) {
    return fetchCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCardsEvent value)? fetchCards,
    TResult Function(_AddCardEvent value)? addCard,
    TResult Function(_RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards(this);
    }
    return orElse();
  }
}

abstract class _FetchCardsEvent implements PaymentCardsEvent {
  const factory _FetchCardsEvent({required final String email}) =
      _$_FetchCardsEvent;

  String get email;
  @JsonKey(ignore: true)
  _$$_FetchCardsEventCopyWith<_$_FetchCardsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCardEventCopyWith<$Res> {
  factory _$$_AddCardEventCopyWith(
          _$_AddCardEvent value, $Res Function(_$_AddCardEvent) then) =
      __$$_AddCardEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String holderName,
      String card,
      String expMonth,
      String expYear,
      String cvc});
}

/// @nodoc
class __$$_AddCardEventCopyWithImpl<$Res>
    extends _$PaymentCardsEventCopyWithImpl<$Res, _$_AddCardEvent>
    implements _$$_AddCardEventCopyWith<$Res> {
  __$$_AddCardEventCopyWithImpl(
      _$_AddCardEvent _value, $Res Function(_$_AddCardEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? holderName = null,
    Object? card = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? cvc = null,
  }) {
    return _then(_$_AddCardEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String,
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCardEvent implements _AddCardEvent {
  const _$_AddCardEvent(
      {required this.email,
      required this.holderName,
      required this.card,
      required this.expMonth,
      required this.expYear,
      required this.cvc});

  @override
  final String email;
  @override
  final String holderName;
  @override
  final String card;
  @override
  final String expMonth;
  @override
  final String expYear;
  @override
  final String cvc;

  @override
  String toString() {
    return 'PaymentCardsEvent.addCard(email: $email, holderName: $holderName, card: $card, expMonth: $expMonth, expYear: $expYear, cvc: $cvc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCardEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.cvc, cvc) || other.cvc == cvc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, holderName, card, expMonth, expYear, cvc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCardEventCopyWith<_$_AddCardEvent> get copyWith =>
      __$$_AddCardEventCopyWithImpl<_$_AddCardEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchCards,
    required TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)
        addCard,
    required TResult Function(String paymentMethodId) removeCard,
  }) {
    return addCard(email, holderName, card, expMonth, expYear, cvc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchCards,
    TResult? Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult? Function(String paymentMethodId)? removeCard,
  }) {
    return addCard?.call(email, holderName, card, expMonth, expYear, cvc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchCards,
    TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult Function(String paymentMethodId)? removeCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(email, holderName, card, expMonth, expYear, cvc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCardsEvent value) fetchCards,
    required TResult Function(_AddCardEvent value) addCard,
    required TResult Function(_RemoveCardEvent value) removeCard,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCardsEvent value)? fetchCards,
    TResult? Function(_AddCardEvent value)? addCard,
    TResult? Function(_RemoveCardEvent value)? removeCard,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCardsEvent value)? fetchCards,
    TResult Function(_AddCardEvent value)? addCard,
    TResult Function(_RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class _AddCardEvent implements PaymentCardsEvent {
  const factory _AddCardEvent(
      {required final String email,
      required final String holderName,
      required final String card,
      required final String expMonth,
      required final String expYear,
      required final String cvc}) = _$_AddCardEvent;

  String get email;
  String get holderName;
  String get card;
  String get expMonth;
  String get expYear;
  String get cvc;
  @JsonKey(ignore: true)
  _$$_AddCardEventCopyWith<_$_AddCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCardEventCopyWith<$Res> {
  factory _$$_RemoveCardEventCopyWith(
          _$_RemoveCardEvent value, $Res Function(_$_RemoveCardEvent) then) =
      __$$_RemoveCardEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentMethodId});
}

/// @nodoc
class __$$_RemoveCardEventCopyWithImpl<$Res>
    extends _$PaymentCardsEventCopyWithImpl<$Res, _$_RemoveCardEvent>
    implements _$$_RemoveCardEventCopyWith<$Res> {
  __$$_RemoveCardEventCopyWithImpl(
      _$_RemoveCardEvent _value, $Res Function(_$_RemoveCardEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodId = null,
  }) {
    return _then(_$_RemoveCardEvent(
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveCardEvent implements _RemoveCardEvent {
  const _$_RemoveCardEvent({required this.paymentMethodId});

  @override
  final String paymentMethodId;

  @override
  String toString() {
    return 'PaymentCardsEvent.removeCard(paymentMethodId: $paymentMethodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveCardEvent &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveCardEventCopyWith<_$_RemoveCardEvent> get copyWith =>
      __$$_RemoveCardEventCopyWithImpl<_$_RemoveCardEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) fetchCards,
    required TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)
        addCard,
    required TResult Function(String paymentMethodId) removeCard,
  }) {
    return removeCard(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? fetchCards,
    TResult? Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult? Function(String paymentMethodId)? removeCard,
  }) {
    return removeCard?.call(paymentMethodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? fetchCards,
    TResult Function(String email, String holderName, String card,
            String expMonth, String expYear, String cvc)?
        addCard,
    TResult Function(String paymentMethodId)? removeCard,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(paymentMethodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCardsEvent value) fetchCards,
    required TResult Function(_AddCardEvent value) addCard,
    required TResult Function(_RemoveCardEvent value) removeCard,
  }) {
    return removeCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCardsEvent value)? fetchCards,
    TResult? Function(_AddCardEvent value)? addCard,
    TResult? Function(_RemoveCardEvent value)? removeCard,
  }) {
    return removeCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCardsEvent value)? fetchCards,
    TResult Function(_AddCardEvent value)? addCard,
    TResult Function(_RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(this);
    }
    return orElse();
  }
}

abstract class _RemoveCardEvent implements PaymentCardsEvent {
  const factory _RemoveCardEvent({required final String paymentMethodId}) =
      _$_RemoveCardEvent;

  String get paymentMethodId;
  @JsonKey(ignore: true)
  _$$_RemoveCardEventCopyWith<_$_RemoveCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentCardsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardsStateCopyWith<$Res> {
  factory $PaymentCardsStateCopyWith(
          PaymentCardsState value, $Res Function(PaymentCardsState) then) =
      _$PaymentCardsStateCopyWithImpl<$Res, PaymentCardsState>;
}

/// @nodoc
class _$PaymentCardsStateCopyWithImpl<$Res, $Val extends PaymentCardsState>
    implements $PaymentCardsStateCopyWith<$Res> {
  _$PaymentCardsStateCopyWithImpl(this._value, this._then);

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
    extends _$PaymentCardsStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'PaymentCardsState.initial()';
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
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
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
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends PaymentCardsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentMethod> paymentMethods});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$PaymentCardsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$_LoadedState(
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required final List<PaymentMethod> paymentMethods})
      : _paymentMethods = paymentMethods,
        super._();

  final List<PaymentMethod> _paymentMethods;
  @override
  List<PaymentMethod> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'PaymentCardsState.loaded(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) {
    return loaded(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) {
    return loaded?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends PaymentCardsState {
  const factory _LoadedState(
      {required final List<PaymentMethod> paymentMethods}) = _$_LoadedState;
  const _LoadedState._() : super._();

  List<PaymentMethod> get paymentMethods;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedCardStateCopyWith<$Res> {
  factory _$$_AddedCardStateCopyWith(
          _$_AddedCardState value, $Res Function(_$_AddedCardState) then) =
      __$$_AddedCardStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentMethod> paymentMethods});
}

/// @nodoc
class __$$_AddedCardStateCopyWithImpl<$Res>
    extends _$PaymentCardsStateCopyWithImpl<$Res, _$_AddedCardState>
    implements _$$_AddedCardStateCopyWith<$Res> {
  __$$_AddedCardStateCopyWithImpl(
      _$_AddedCardState _value, $Res Function(_$_AddedCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$_AddedCardState(
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_AddedCardState extends _AddedCardState {
  const _$_AddedCardState({required final List<PaymentMethod> paymentMethods})
      : _paymentMethods = paymentMethods,
        super._();

  final List<PaymentMethod> _paymentMethods;
  @override
  List<PaymentMethod> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'PaymentCardsState.addedCard(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedCardState &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedCardStateCopyWith<_$_AddedCardState> get copyWith =>
      __$$_AddedCardStateCopyWithImpl<_$_AddedCardState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) {
    return addedCard(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) {
    return addedCard?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
    required TResult orElse(),
  }) {
    if (addedCard != null) {
      return addedCard(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) {
    return addedCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) {
    return addedCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) {
    if (addedCard != null) {
      return addedCard(this);
    }
    return orElse();
  }
}

abstract class _AddedCardState extends PaymentCardsState {
  const factory _AddedCardState(
      {required final List<PaymentMethod> paymentMethods}) = _$_AddedCardState;
  const _AddedCardState._() : super._();

  List<PaymentMethod> get paymentMethods;
  @JsonKey(ignore: true)
  _$$_AddedCardStateCopyWith<_$_AddedCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedCardStateCopyWith<$Res> {
  factory _$$_RemovedCardStateCopyWith(
          _$_RemovedCardState value, $Res Function(_$_RemovedCardState) then) =
      __$$_RemovedCardStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentMethod> paymentMethods});
}

/// @nodoc
class __$$_RemovedCardStateCopyWithImpl<$Res>
    extends _$PaymentCardsStateCopyWithImpl<$Res, _$_RemovedCardState>
    implements _$$_RemovedCardStateCopyWith<$Res> {
  __$$_RemovedCardStateCopyWithImpl(
      _$_RemovedCardState _value, $Res Function(_$_RemovedCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$_RemovedCardState(
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_RemovedCardState extends _RemovedCardState {
  const _$_RemovedCardState({required final List<PaymentMethod> paymentMethods})
      : _paymentMethods = paymentMethods,
        super._();

  final List<PaymentMethod> _paymentMethods;
  @override
  List<PaymentMethod> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'PaymentCardsState.removedCard(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovedCardState &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedCardStateCopyWith<_$_RemovedCardState> get copyWith =>
      __$$_RemovedCardStateCopyWithImpl<_$_RemovedCardState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) {
    return removedCard(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) {
    return removedCard?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
    required TResult orElse(),
  }) {
    if (removedCard != null) {
      return removedCard(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) {
    return removedCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) {
    return removedCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) {
    if (removedCard != null) {
      return removedCard(this);
    }
    return orElse();
  }
}

abstract class _RemovedCardState extends PaymentCardsState {
  const factory _RemovedCardState(
          {required final List<PaymentMethod> paymentMethods}) =
      _$_RemovedCardState;
  const _RemovedCardState._() : super._();

  List<PaymentMethod> get paymentMethods;
  @JsonKey(ignore: true)
  _$$_RemovedCardStateCopyWith<_$_RemovedCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailCardAddStateCopyWith<$Res> {
  factory _$$_FailCardAddStateCopyWith(
          _$_FailCardAddState value, $Res Function(_$_FailCardAddState) then) =
      __$$_FailCardAddStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentMethod> paymentMethods});
}

/// @nodoc
class __$$_FailCardAddStateCopyWithImpl<$Res>
    extends _$PaymentCardsStateCopyWithImpl<$Res, _$_FailCardAddState>
    implements _$$_FailCardAddStateCopyWith<$Res> {
  __$$_FailCardAddStateCopyWithImpl(
      _$_FailCardAddState _value, $Res Function(_$_FailCardAddState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$_FailCardAddState(
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_FailCardAddState extends _FailCardAddState {
  const _$_FailCardAddState({required final List<PaymentMethod> paymentMethods})
      : _paymentMethods = paymentMethods,
        super._();

  final List<PaymentMethod> _paymentMethods;
  @override
  List<PaymentMethod> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'PaymentCardsState.failCardAdd(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailCardAddState &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailCardAddStateCopyWith<_$_FailCardAddState> get copyWith =>
      __$$_FailCardAddStateCopyWithImpl<_$_FailCardAddState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PaymentMethod> paymentMethods) loaded,
    required TResult Function(List<PaymentMethod> paymentMethods) addedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) removedCard,
    required TResult Function(List<PaymentMethod> paymentMethods) failCardAdd,
  }) {
    return failCardAdd(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult? Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult? Function(List<PaymentMethod> paymentMethods)? failCardAdd,
  }) {
    return failCardAdd?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PaymentMethod> paymentMethods)? loaded,
    TResult Function(List<PaymentMethod> paymentMethods)? addedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? removedCard,
    TResult Function(List<PaymentMethod> paymentMethods)? failCardAdd,
    required TResult orElse(),
  }) {
    if (failCardAdd != null) {
      return failCardAdd(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedCardState value) addedCard,
    required TResult Function(_RemovedCardState value) removedCard,
    required TResult Function(_FailCardAddState value) failCardAdd,
  }) {
    return failCardAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedCardState value)? addedCard,
    TResult? Function(_RemovedCardState value)? removedCard,
    TResult? Function(_FailCardAddState value)? failCardAdd,
  }) {
    return failCardAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedCardState value)? addedCard,
    TResult Function(_RemovedCardState value)? removedCard,
    TResult Function(_FailCardAddState value)? failCardAdd,
    required TResult orElse(),
  }) {
    if (failCardAdd != null) {
      return failCardAdd(this);
    }
    return orElse();
  }
}

abstract class _FailCardAddState extends PaymentCardsState {
  const factory _FailCardAddState(
          {required final List<PaymentMethod> paymentMethods}) =
      _$_FailCardAddState;
  const _FailCardAddState._() : super._();

  List<PaymentMethod> get paymentMethods;
  @JsonKey(ignore: true)
  _$$_FailCardAddStateCopyWith<_$_FailCardAddState> get copyWith =>
      throw _privateConstructorUsedError;
}
