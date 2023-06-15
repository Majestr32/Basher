// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$Ticket {
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
  TicketsTypes get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
  Currencies get currency => throw _privateConstructorUsedError;
  int get bought => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_quantity')
  int get fixedQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
  @useResult
  $Res call(
      {String? uid,
      @JsonKey(fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
          TicketsTypes type,
      String description,
      double price,
      @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
          Currencies currency,
      int bought,
      @JsonKey(name: 'fixed_quantity')
          int fixedQuantity});
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? type = null,
    Object? description = null,
    Object? price = null,
    Object? currency = null,
    Object? bought = null,
    Object? fixedQuantity = null,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketsTypes,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currencies,
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as int,
      fixedQuantity: null == fixedQuantity
          ? _value.fixedQuantity
          : fixedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$_TicketCopyWith(_$_Ticket value, $Res Function(_$_Ticket) then) =
      __$$_TicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      @JsonKey(fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
          TicketsTypes type,
      String description,
      double price,
      @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
          Currencies currency,
      int bought,
      @JsonKey(name: 'fixed_quantity')
          int fixedQuantity});
}

/// @nodoc
class __$$_TicketCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$_Ticket>
    implements _$$_TicketCopyWith<$Res> {
  __$$_TicketCopyWithImpl(_$_Ticket _value, $Res Function(_$_Ticket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? type = null,
    Object? description = null,
    Object? price = null,
    Object? currency = null,
    Object? bought = null,
    Object? fixedQuantity = null,
  }) {
    return _then(_$_Ticket(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketsTypes,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currencies,
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as int,
      fixedQuantity: null == fixedQuantity
          ? _value.fixedQuantity
          : fixedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ticket extends _Ticket with DiagnosticableTreeMixin {
  const _$_Ticket(
      {this.uid,
      @JsonKey(fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
          required this.type,
      required this.description,
      required this.price,
      @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
          this.currency = Currencies.usd,
      this.bought = 0,
      @JsonKey(name: 'fixed_quantity')
          required this.fixedQuantity})
      : super._();

  factory _$_Ticket.fromJson(Map<String, dynamic> json) =>
      _$$_TicketFromJson(json);

  @override
  final String? uid;
  @override
  @JsonKey(
      fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
  final TicketsTypes type;
  @override
  final String description;
  @override
  final double price;
  @override
  @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
  final Currencies currency;
  @override
  @JsonKey()
  final int bought;
  @override
  @JsonKey(name: 'fixed_quantity')
  final int fixedQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ticket(uid: $uid, type: $type, description: $description, price: $price, currency: $currency, bought: $bought, fixedQuantity: $fixedQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ticket'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('bought', bought))
      ..add(DiagnosticsProperty('fixedQuantity', fixedQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticket &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.bought, bought) || other.bought == bought) &&
            (identical(other.fixedQuantity, fixedQuantity) ||
                other.fixedQuantity == fixedQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, type, description, price,
      currency, bought, fixedQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      __$$_TicketCopyWithImpl<_$_Ticket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketToJson(
      this,
    );
  }
}

abstract class _Ticket extends Ticket {
  const factory _Ticket(
      {final String? uid,
      @JsonKey(fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
          required final TicketsTypes type,
      required final String description,
      required final double price,
      @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
          final Currencies currency,
      final int bought,
      @JsonKey(name: 'fixed_quantity')
          required final int fixedQuantity}) = _$_Ticket;
  const _Ticket._() : super._();

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$_Ticket.fromJson;

  @override
  String? get uid;
  @override
  @JsonKey(
      fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString)
  TicketsTypes get type;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString)
  Currencies get currency;
  @override
  int get bought;
  @override
  @JsonKey(name: 'fixed_quantity')
  int get fixedQuantity;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      throw _privateConstructorUsedError;
}
