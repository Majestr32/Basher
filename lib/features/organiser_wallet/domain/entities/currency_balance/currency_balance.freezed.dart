// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyBalance _$CurrencyBalanceFromJson(Map<String, dynamic> json) {
  return _CurrencyBalance.fromJson(json);
}

/// @nodoc
mixin _$CurrencyBalance {
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyBalanceCopyWith<CurrencyBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyBalanceCopyWith<$Res> {
  factory $CurrencyBalanceCopyWith(
          CurrencyBalance value, $Res Function(CurrencyBalance) then) =
      _$CurrencyBalanceCopyWithImpl<$Res, CurrencyBalance>;
  @useResult
  $Res call(
      {String currency,
      @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
          double amount});
}

/// @nodoc
class _$CurrencyBalanceCopyWithImpl<$Res, $Val extends CurrencyBalance>
    implements $CurrencyBalanceCopyWith<$Res> {
  _$CurrencyBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyBalanceCopyWith<$Res>
    implements $CurrencyBalanceCopyWith<$Res> {
  factory _$$_CurrencyBalanceCopyWith(
          _$_CurrencyBalance value, $Res Function(_$_CurrencyBalance) then) =
      __$$_CurrencyBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
          double amount});
}

/// @nodoc
class __$$_CurrencyBalanceCopyWithImpl<$Res>
    extends _$CurrencyBalanceCopyWithImpl<$Res, _$_CurrencyBalance>
    implements _$$_CurrencyBalanceCopyWith<$Res> {
  __$$_CurrencyBalanceCopyWithImpl(
      _$_CurrencyBalance _value, $Res Function(_$_CurrencyBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_$_CurrencyBalance(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyBalance extends _CurrencyBalance {
  const _$_CurrencyBalance(
      {required this.currency,
      @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
          required this.amount})
      : super._();

  factory _$_CurrencyBalance.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyBalanceFromJson(json);

  @override
  final String currency;
  @override
  @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
  final double amount;

  @override
  String toString() {
    return 'CurrencyBalance(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyBalance &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyBalanceCopyWith<_$_CurrencyBalance> get copyWith =>
      __$$_CurrencyBalanceCopyWithImpl<_$_CurrencyBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyBalanceToJson(
      this,
    );
  }
}

abstract class _CurrencyBalance extends CurrencyBalance {
  const factory _CurrencyBalance(
      {required final String currency,
      @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
          required final double amount}) = _$_CurrencyBalance;
  const _CurrencyBalance._() : super._();

  factory _CurrencyBalance.fromJson(Map<String, dynamic> json) =
      _$_CurrencyBalance.fromJson;

  @override
  String get currency;
  @override
  @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble)
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyBalanceCopyWith<_$_CurrencyBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
