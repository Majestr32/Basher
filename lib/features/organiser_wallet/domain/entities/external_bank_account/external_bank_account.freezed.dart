// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_bank_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExternalBankAccount _$ExternalBankAccountFromJson(Map<String, dynamic> json) {
  return _ExternalBankAccount.fromJson(json);
}

/// @nodoc
mixin _$ExternalBankAccount {
  @JsonKey(name: 'bank_name')
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'routing_number')
  String get routingNumber => throw _privateConstructorUsedError;
  String get last4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_for_currency')
  bool get defaultForCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalBankAccountCopyWith<ExternalBankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalBankAccountCopyWith<$Res> {
  factory $ExternalBankAccountCopyWith(
          ExternalBankAccount value, $Res Function(ExternalBankAccount) then) =
      _$ExternalBankAccountCopyWithImpl<$Res, ExternalBankAccount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bank_name') String bankName,
      @JsonKey(name: 'routing_number') String routingNumber,
      String last4,
      @JsonKey(name: 'default_for_currency') bool defaultForCurrency});
}

/// @nodoc
class _$ExternalBankAccountCopyWithImpl<$Res, $Val extends ExternalBankAccount>
    implements $ExternalBankAccountCopyWith<$Res> {
  _$ExternalBankAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? routingNumber = null,
    Object? last4 = null,
    Object? defaultForCurrency = null,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      routingNumber: null == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      last4: null == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String,
      defaultForCurrency: null == defaultForCurrency
          ? _value.defaultForCurrency
          : defaultForCurrency // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExternalBankAccountCopyWith<$Res>
    implements $ExternalBankAccountCopyWith<$Res> {
  factory _$$_ExternalBankAccountCopyWith(_$_ExternalBankAccount value,
          $Res Function(_$_ExternalBankAccount) then) =
      __$$_ExternalBankAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bank_name') String bankName,
      @JsonKey(name: 'routing_number') String routingNumber,
      String last4,
      @JsonKey(name: 'default_for_currency') bool defaultForCurrency});
}

/// @nodoc
class __$$_ExternalBankAccountCopyWithImpl<$Res>
    extends _$ExternalBankAccountCopyWithImpl<$Res, _$_ExternalBankAccount>
    implements _$$_ExternalBankAccountCopyWith<$Res> {
  __$$_ExternalBankAccountCopyWithImpl(_$_ExternalBankAccount _value,
      $Res Function(_$_ExternalBankAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? routingNumber = null,
    Object? last4 = null,
    Object? defaultForCurrency = null,
  }) {
    return _then(_$_ExternalBankAccount(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      routingNumber: null == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      last4: null == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String,
      defaultForCurrency: null == defaultForCurrency
          ? _value.defaultForCurrency
          : defaultForCurrency // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExternalBankAccount
    with DiagnosticableTreeMixin
    implements _ExternalBankAccount {
  const _$_ExternalBankAccount(
      {@JsonKey(name: 'bank_name') required this.bankName,
      @JsonKey(name: 'routing_number') required this.routingNumber,
      required this.last4,
      @JsonKey(name: 'default_for_currency') required this.defaultForCurrency});

  factory _$_ExternalBankAccount.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalBankAccountFromJson(json);

  @override
  @JsonKey(name: 'bank_name')
  final String bankName;
  @override
  @JsonKey(name: 'routing_number')
  final String routingNumber;
  @override
  final String last4;
  @override
  @JsonKey(name: 'default_for_currency')
  final bool defaultForCurrency;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExternalBankAccount(bankName: $bankName, routingNumber: $routingNumber, last4: $last4, defaultForCurrency: $defaultForCurrency)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExternalBankAccount'))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('routingNumber', routingNumber))
      ..add(DiagnosticsProperty('last4', last4))
      ..add(DiagnosticsProperty('defaultForCurrency', defaultForCurrency));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalBankAccount &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.defaultForCurrency, defaultForCurrency) ||
                other.defaultForCurrency == defaultForCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, bankName, routingNumber, last4, defaultForCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalBankAccountCopyWith<_$_ExternalBankAccount> get copyWith =>
      __$$_ExternalBankAccountCopyWithImpl<_$_ExternalBankAccount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalBankAccountToJson(
      this,
    );
  }
}

abstract class _ExternalBankAccount implements ExternalBankAccount {
  const factory _ExternalBankAccount(
      {@JsonKey(name: 'bank_name')
          required final String bankName,
      @JsonKey(name: 'routing_number')
          required final String routingNumber,
      required final String last4,
      @JsonKey(name: 'default_for_currency')
          required final bool defaultForCurrency}) = _$_ExternalBankAccount;

  factory _ExternalBankAccount.fromJson(Map<String, dynamic> json) =
      _$_ExternalBankAccount.fromJson;

  @override
  @JsonKey(name: 'bank_name')
  String get bankName;
  @override
  @JsonKey(name: 'routing_number')
  String get routingNumber;
  @override
  String get last4;
  @override
  @JsonKey(name: 'default_for_currency')
  bool get defaultForCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalBankAccountCopyWith<_$_ExternalBankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
