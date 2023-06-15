// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organiser_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganiserAccount _$OrganiserAccountFromJson(Map<String, dynamic> json) {
  return _OrganiserAccount.fromJson(json);
}

/// @nodoc
mixin _$OrganiserAccount {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'charges_enabled')
  bool get transfersEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'payouts_enabled')
  bool get payoutsEnabled => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'external_accounts',
      includeToJson: false,
      fromJson: _extractBankAccounts)
  List<ExternalBankAccount> get externalAccounts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganiserAccountCopyWith<OrganiserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganiserAccountCopyWith<$Res> {
  factory $OrganiserAccountCopyWith(
          OrganiserAccount value, $Res Function(OrganiserAccount) then) =
      _$OrganiserAccountCopyWithImpl<$Res, OrganiserAccount>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'charges_enabled')
          bool transfersEnabled,
      @JsonKey(name: 'payouts_enabled')
          bool payoutsEnabled,
      @JsonKey(name: 'external_accounts', includeToJson: false, fromJson: _extractBankAccounts)
          List<ExternalBankAccount> externalAccounts});
}

/// @nodoc
class _$OrganiserAccountCopyWithImpl<$Res, $Val extends OrganiserAccount>
    implements $OrganiserAccountCopyWith<$Res> {
  _$OrganiserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transfersEnabled = null,
    Object? payoutsEnabled = null,
    Object? externalAccounts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transfersEnabled: null == transfersEnabled
          ? _value.transfersEnabled
          : transfersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutsEnabled: null == payoutsEnabled
          ? _value.payoutsEnabled
          : payoutsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      externalAccounts: null == externalAccounts
          ? _value.externalAccounts
          : externalAccounts // ignore: cast_nullable_to_non_nullable
              as List<ExternalBankAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganiserAccountCopyWith<$Res>
    implements $OrganiserAccountCopyWith<$Res> {
  factory _$$_OrganiserAccountCopyWith(
          _$_OrganiserAccount value, $Res Function(_$_OrganiserAccount) then) =
      __$$_OrganiserAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'charges_enabled')
          bool transfersEnabled,
      @JsonKey(name: 'payouts_enabled')
          bool payoutsEnabled,
      @JsonKey(name: 'external_accounts', includeToJson: false, fromJson: _extractBankAccounts)
          List<ExternalBankAccount> externalAccounts});
}

/// @nodoc
class __$$_OrganiserAccountCopyWithImpl<$Res>
    extends _$OrganiserAccountCopyWithImpl<$Res, _$_OrganiserAccount>
    implements _$$_OrganiserAccountCopyWith<$Res> {
  __$$_OrganiserAccountCopyWithImpl(
      _$_OrganiserAccount _value, $Res Function(_$_OrganiserAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transfersEnabled = null,
    Object? payoutsEnabled = null,
    Object? externalAccounts = null,
  }) {
    return _then(_$_OrganiserAccount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transfersEnabled: null == transfersEnabled
          ? _value.transfersEnabled
          : transfersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutsEnabled: null == payoutsEnabled
          ? _value.payoutsEnabled
          : payoutsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      externalAccounts: null == externalAccounts
          ? _value._externalAccounts
          : externalAccounts // ignore: cast_nullable_to_non_nullable
              as List<ExternalBankAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganiserAccount extends _OrganiserAccount
    with DiagnosticableTreeMixin {
  const _$_OrganiserAccount(
      {required this.id,
      @JsonKey(name: 'charges_enabled')
          required this.transfersEnabled,
      @JsonKey(name: 'payouts_enabled')
          required this.payoutsEnabled,
      @JsonKey(name: 'external_accounts', includeToJson: false, fromJson: _extractBankAccounts)
          required final List<ExternalBankAccount> externalAccounts})
      : _externalAccounts = externalAccounts,
        super._();

  factory _$_OrganiserAccount.fromJson(Map<String, dynamic> json) =>
      _$$_OrganiserAccountFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'charges_enabled')
  final bool transfersEnabled;
  @override
  @JsonKey(name: 'payouts_enabled')
  final bool payoutsEnabled;
  final List<ExternalBankAccount> _externalAccounts;
  @override
  @JsonKey(
      name: 'external_accounts',
      includeToJson: false,
      fromJson: _extractBankAccounts)
  List<ExternalBankAccount> get externalAccounts {
    if (_externalAccounts is EqualUnmodifiableListView)
      return _externalAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_externalAccounts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganiserAccount(id: $id, transfersEnabled: $transfersEnabled, payoutsEnabled: $payoutsEnabled, externalAccounts: $externalAccounts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganiserAccount'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('transfersEnabled', transfersEnabled))
      ..add(DiagnosticsProperty('payoutsEnabled', payoutsEnabled))
      ..add(DiagnosticsProperty('externalAccounts', externalAccounts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganiserAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transfersEnabled, transfersEnabled) ||
                other.transfersEnabled == transfersEnabled) &&
            (identical(other.payoutsEnabled, payoutsEnabled) ||
                other.payoutsEnabled == payoutsEnabled) &&
            const DeepCollectionEquality()
                .equals(other._externalAccounts, _externalAccounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transfersEnabled,
      payoutsEnabled, const DeepCollectionEquality().hash(_externalAccounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganiserAccountCopyWith<_$_OrganiserAccount> get copyWith =>
      __$$_OrganiserAccountCopyWithImpl<_$_OrganiserAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganiserAccountToJson(
      this,
    );
  }
}

abstract class _OrganiserAccount extends OrganiserAccount {
  const factory _OrganiserAccount(
      {required final String id,
      @JsonKey(name: 'charges_enabled')
          required final bool transfersEnabled,
      @JsonKey(name: 'payouts_enabled')
          required final bool payoutsEnabled,
      @JsonKey(name: 'external_accounts', includeToJson: false, fromJson: _extractBankAccounts)
          required final List<ExternalBankAccount> externalAccounts}) = _$_OrganiserAccount;
  const _OrganiserAccount._() : super._();

  factory _OrganiserAccount.fromJson(Map<String, dynamic> json) =
      _$_OrganiserAccount.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'charges_enabled')
  bool get transfersEnabled;
  @override
  @JsonKey(name: 'payouts_enabled')
  bool get payoutsEnabled;
  @override
  @JsonKey(
      name: 'external_accounts',
      includeToJson: false,
      fromJson: _extractBankAccounts)
  List<ExternalBankAccount> get externalAccounts;
  @override
  @JsonKey(ignore: true)
  _$$_OrganiserAccountCopyWith<_$_OrganiserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
