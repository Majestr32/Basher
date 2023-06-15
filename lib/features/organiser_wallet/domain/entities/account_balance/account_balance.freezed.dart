// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBalance _$AccountBalanceFromJson(Map<String, dynamic> json) {
  return _AccountBalance.fromJson(json);
}

/// @nodoc
mixin _$AccountBalance {
  @JsonKey(name: 'pending', includeToJson: false)
  List<CurrencyBalance> get pendingBalances =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'available', includeToJson: false)
  List<CurrencyBalance> get availableBalances =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalanceCopyWith<AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceCopyWith<$Res> {
  factory $AccountBalanceCopyWith(
          AccountBalance value, $Res Function(AccountBalance) then) =
      _$AccountBalanceCopyWithImpl<$Res, AccountBalance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pending', includeToJson: false)
          List<CurrencyBalance> pendingBalances,
      @JsonKey(name: 'available', includeToJson: false)
          List<CurrencyBalance> availableBalances});
}

/// @nodoc
class _$AccountBalanceCopyWithImpl<$Res, $Val extends AccountBalance>
    implements $AccountBalanceCopyWith<$Res> {
  _$AccountBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingBalances = null,
    Object? availableBalances = null,
  }) {
    return _then(_value.copyWith(
      pendingBalances: null == pendingBalances
          ? _value.pendingBalances
          : pendingBalances // ignore: cast_nullable_to_non_nullable
              as List<CurrencyBalance>,
      availableBalances: null == availableBalances
          ? _value.availableBalances
          : availableBalances // ignore: cast_nullable_to_non_nullable
              as List<CurrencyBalance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBalanceCopyWith<$Res>
    implements $AccountBalanceCopyWith<$Res> {
  factory _$$_AccountBalanceCopyWith(
          _$_AccountBalance value, $Res Function(_$_AccountBalance) then) =
      __$$_AccountBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pending', includeToJson: false)
          List<CurrencyBalance> pendingBalances,
      @JsonKey(name: 'available', includeToJson: false)
          List<CurrencyBalance> availableBalances});
}

/// @nodoc
class __$$_AccountBalanceCopyWithImpl<$Res>
    extends _$AccountBalanceCopyWithImpl<$Res, _$_AccountBalance>
    implements _$$_AccountBalanceCopyWith<$Res> {
  __$$_AccountBalanceCopyWithImpl(
      _$_AccountBalance _value, $Res Function(_$_AccountBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingBalances = null,
    Object? availableBalances = null,
  }) {
    return _then(_$_AccountBalance(
      pendingBalances: null == pendingBalances
          ? _value._pendingBalances
          : pendingBalances // ignore: cast_nullable_to_non_nullable
              as List<CurrencyBalance>,
      availableBalances: null == availableBalances
          ? _value._availableBalances
          : availableBalances // ignore: cast_nullable_to_non_nullable
              as List<CurrencyBalance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBalance extends _AccountBalance with DiagnosticableTreeMixin {
  const _$_AccountBalance(
      {@JsonKey(name: 'pending', includeToJson: false)
          required final List<CurrencyBalance> pendingBalances,
      @JsonKey(name: 'available', includeToJson: false)
          required final List<CurrencyBalance> availableBalances})
      : _pendingBalances = pendingBalances,
        _availableBalances = availableBalances,
        super._();

  factory _$_AccountBalance.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBalanceFromJson(json);

  final List<CurrencyBalance> _pendingBalances;
  @override
  @JsonKey(name: 'pending', includeToJson: false)
  List<CurrencyBalance> get pendingBalances {
    if (_pendingBalances is EqualUnmodifiableListView) return _pendingBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingBalances);
  }

  final List<CurrencyBalance> _availableBalances;
  @override
  @JsonKey(name: 'available', includeToJson: false)
  List<CurrencyBalance> get availableBalances {
    if (_availableBalances is EqualUnmodifiableListView)
      return _availableBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableBalances);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountBalance(pendingBalances: $pendingBalances, availableBalances: $availableBalances)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountBalance'))
      ..add(DiagnosticsProperty('pendingBalances', pendingBalances))
      ..add(DiagnosticsProperty('availableBalances', availableBalances));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBalance &&
            const DeepCollectionEquality()
                .equals(other._pendingBalances, _pendingBalances) &&
            const DeepCollectionEquality()
                .equals(other._availableBalances, _availableBalances));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pendingBalances),
      const DeepCollectionEquality().hash(_availableBalances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      __$$_AccountBalanceCopyWithImpl<_$_AccountBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBalanceToJson(
      this,
    );
  }
}

abstract class _AccountBalance extends AccountBalance {
  const factory _AccountBalance(
          {@JsonKey(name: 'pending', includeToJson: false)
              required final List<CurrencyBalance> pendingBalances,
          @JsonKey(name: 'available', includeToJson: false)
              required final List<CurrencyBalance> availableBalances}) =
      _$_AccountBalance;
  const _AccountBalance._() : super._();

  factory _AccountBalance.fromJson(Map<String, dynamic> json) =
      _$_AccountBalance.fromJson;

  @override
  @JsonKey(name: 'pending', includeToJson: false)
  List<CurrencyBalance> get pendingBalances;
  @override
  @JsonKey(name: 'available', includeToJson: false)
  List<CurrencyBalance> get availableBalances;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
