// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payout _$PayoutFromJson(Map<String, dynamic> json) {
  return _Payout.fromJson(json);
}

/// @nodoc
mixin _$Payout {
  String get currency => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int get amountInCents => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayoutCopyWith<Payout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutCopyWith<$Res> {
  factory $PayoutCopyWith(Payout value, $Res Function(Payout) then) =
      _$PayoutCopyWithImpl<$Res, Payout>;
  @useResult
  $Res call(
      {String currency,
      String status,
      @JsonKey(name: 'amount')
          int amountInCents,
      @JsonKey(name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
          DateTime createdAt});
}

/// @nodoc
class _$PayoutCopyWithImpl<$Res, $Val extends Payout>
    implements $PayoutCopyWith<$Res> {
  _$PayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? status = null,
    Object? amountInCents = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amountInCents: null == amountInCents
          ? _value.amountInCents
          : amountInCents // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayoutCopyWith<$Res> implements $PayoutCopyWith<$Res> {
  factory _$$_PayoutCopyWith(_$_Payout value, $Res Function(_$_Payout) then) =
      __$$_PayoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      String status,
      @JsonKey(name: 'amount')
          int amountInCents,
      @JsonKey(name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
          DateTime createdAt});
}

/// @nodoc
class __$$_PayoutCopyWithImpl<$Res>
    extends _$PayoutCopyWithImpl<$Res, _$_Payout>
    implements _$$_PayoutCopyWith<$Res> {
  __$$_PayoutCopyWithImpl(_$_Payout _value, $Res Function(_$_Payout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? status = null,
    Object? amountInCents = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Payout(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amountInCents: null == amountInCents
          ? _value.amountInCents
          : amountInCents // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payout extends _Payout with DiagnosticableTreeMixin {
  const _$_Payout(
      {required this.currency,
      required this.status,
      @JsonKey(name: 'amount')
          required this.amountInCents,
      @JsonKey(name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
          required this.createdAt})
      : super._();

  factory _$_Payout.fromJson(Map<String, dynamic> json) =>
      _$$_PayoutFromJson(json);

  @override
  final String currency;
  @override
  final String status;
  @override
  @JsonKey(name: 'amount')
  final int amountInCents;
  @override
  @JsonKey(
      name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Payout(currency: $currency, status: $status, amountInCents: $amountInCents, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Payout'))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('amountInCents', amountInCents))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payout &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amountInCents, amountInCents) ||
                other.amountInCents == amountInCents) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currency, status, amountInCents, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayoutCopyWith<_$_Payout> get copyWith =>
      __$$_PayoutCopyWithImpl<_$_Payout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayoutToJson(
      this,
    );
  }
}

abstract class _Payout extends Payout {
  const factory _Payout(
      {required final String currency,
      required final String status,
      @JsonKey(name: 'amount')
          required final int amountInCents,
      @JsonKey(name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
          required final DateTime createdAt}) = _$_Payout;
  const _Payout._() : super._();

  factory _Payout.fromJson(Map<String, dynamic> json) = _$_Payout.fromJson;

  @override
  String get currency;
  @override
  String get status;
  @override
  @JsonKey(name: 'amount')
  int get amountInCents;
  @override
  @JsonKey(
      name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PayoutCopyWith<_$_Payout> get copyWith =>
      throw _privateConstructorUsedError;
}
