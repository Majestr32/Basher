// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_stamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketStamp _$TicketStampFromJson(Map<String, dynamic> json) {
  return _TicketStamp.fromJson(json);
}

/// @nodoc
mixin _$TicketStamp {
  @JsonKey(name: 'qr_core')
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'buyer_uid')
  String get buyerUid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  Gender get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_uid')
  String get ticketUid => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      toJson: dateToTimestamp,
      fromJson: timestampToDateTime)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketStampCopyWith<TicketStamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStampCopyWith<$Res> {
  factory $TicketStampCopyWith(
          TicketStamp value, $Res Function(TicketStamp) then) =
      _$TicketStampCopyWithImpl<$Res, TicketStamp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'qr_core')
          String qrCode,
      @JsonKey(name: 'buyer_uid')
          String buyerUid,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          Gender gender,
      @JsonKey(name: 'ticket_uid')
          String ticketUid,
      @JsonKey(name: 'created_at', toJson: dateToTimestamp, fromJson: timestampToDateTime)
          DateTime createdAt});
}

/// @nodoc
class _$TicketStampCopyWithImpl<$Res, $Val extends TicketStamp>
    implements $TicketStampCopyWith<$Res> {
  _$TicketStampCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
    Object? buyerUid = null,
    Object? gender = null,
    Object? ticketUid = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      buyerUid: null == buyerUid
          ? _value.buyerUid
          : buyerUid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      ticketUid: null == ticketUid
          ? _value.ticketUid
          : ticketUid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketStampCopyWith<$Res>
    implements $TicketStampCopyWith<$Res> {
  factory _$$_TicketStampCopyWith(
          _$_TicketStamp value, $Res Function(_$_TicketStamp) then) =
      __$$_TicketStampCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'qr_core')
          String qrCode,
      @JsonKey(name: 'buyer_uid')
          String buyerUid,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          Gender gender,
      @JsonKey(name: 'ticket_uid')
          String ticketUid,
      @JsonKey(name: 'created_at', toJson: dateToTimestamp, fromJson: timestampToDateTime)
          DateTime createdAt});
}

/// @nodoc
class __$$_TicketStampCopyWithImpl<$Res>
    extends _$TicketStampCopyWithImpl<$Res, _$_TicketStamp>
    implements _$$_TicketStampCopyWith<$Res> {
  __$$_TicketStampCopyWithImpl(
      _$_TicketStamp _value, $Res Function(_$_TicketStamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
    Object? buyerUid = null,
    Object? gender = null,
    Object? ticketUid = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TicketStamp(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      buyerUid: null == buyerUid
          ? _value.buyerUid
          : buyerUid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      ticketUid: null == ticketUid
          ? _value.ticketUid
          : ticketUid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketStamp implements _TicketStamp {
  const _$_TicketStamp(
      {@JsonKey(name: 'qr_core')
          required this.qrCode,
      @JsonKey(name: 'buyer_uid')
          required this.buyerUid,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          required this.gender,
      @JsonKey(name: 'ticket_uid')
          required this.ticketUid,
      @JsonKey(name: 'created_at', toJson: dateToTimestamp, fromJson: timestampToDateTime)
          required this.createdAt});

  factory _$_TicketStamp.fromJson(Map<String, dynamic> json) =>
      _$$_TicketStampFromJson(json);

  @override
  @JsonKey(name: 'qr_core')
  final String qrCode;
  @override
  @JsonKey(name: 'buyer_uid')
  final String buyerUid;
  @override
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  final Gender gender;
  @override
  @JsonKey(name: 'ticket_uid')
  final String ticketUid;
  @override
  @JsonKey(
      name: 'created_at',
      toJson: dateToTimestamp,
      fromJson: timestampToDateTime)
  final DateTime createdAt;

  @override
  String toString() {
    return 'TicketStamp(qrCode: $qrCode, buyerUid: $buyerUid, gender: $gender, ticketUid: $ticketUid, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketStamp &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.buyerUid, buyerUid) ||
                other.buyerUid == buyerUid) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.ticketUid, ticketUid) ||
                other.ticketUid == ticketUid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, qrCode, buyerUid, gender, ticketUid, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStampCopyWith<_$_TicketStamp> get copyWith =>
      __$$_TicketStampCopyWithImpl<_$_TicketStamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketStampToJson(
      this,
    );
  }
}

abstract class _TicketStamp implements TicketStamp {
  const factory _TicketStamp(
      {@JsonKey(name: 'qr_core')
          required final String qrCode,
      @JsonKey(name: 'buyer_uid')
          required final String buyerUid,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          required final Gender gender,
      @JsonKey(name: 'ticket_uid')
          required final String ticketUid,
      @JsonKey(name: 'created_at', toJson: dateToTimestamp, fromJson: timestampToDateTime)
          required final DateTime createdAt}) = _$_TicketStamp;

  factory _TicketStamp.fromJson(Map<String, dynamic> json) =
      _$_TicketStamp.fromJson;

  @override
  @JsonKey(name: 'qr_core')
  String get qrCode;
  @override
  @JsonKey(name: 'buyer_uid')
  String get buyerUid;
  @override
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  Gender get gender;
  @override
  @JsonKey(name: 'ticket_uid')
  String get ticketUid;
  @override
  @JsonKey(
      name: 'created_at',
      toJson: dateToTimestamp,
      fromJson: timestampToDateTime)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TicketStampCopyWith<_$_TicketStamp> get copyWith =>
      throw _privateConstructorUsedError;
}
