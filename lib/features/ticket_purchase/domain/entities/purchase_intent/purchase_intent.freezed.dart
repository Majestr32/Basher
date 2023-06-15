// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseIntent _$PurchaseIntentFromJson(Map<String, dynamic> json) {
  return _PurchaseIntent.fromJson(json);
}

/// @nodoc
mixin _$PurchaseIntent {
  Ticket get ticket => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseIntentCopyWith<PurchaseIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseIntentCopyWith<$Res> {
  factory $PurchaseIntentCopyWith(
          PurchaseIntent value, $Res Function(PurchaseIntent) then) =
      _$PurchaseIntentCopyWithImpl<$Res, PurchaseIntent>;
  @useResult
  $Res call({Ticket ticket, EventModel event, String userUid, String gender});

  $TicketCopyWith<$Res> get ticket;
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$PurchaseIntentCopyWithImpl<$Res, $Val extends PurchaseIntent>
    implements $PurchaseIntentCopyWith<$Res> {
  _$PurchaseIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? event = null,
    Object? userUid = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res> get ticket {
    return $TicketCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get event {
    return $EventModelCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseIntentCopyWith<$Res>
    implements $PurchaseIntentCopyWith<$Res> {
  factory _$$_PurchaseIntentCopyWith(
          _$_PurchaseIntent value, $Res Function(_$_PurchaseIntent) then) =
      __$$_PurchaseIntentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket, EventModel event, String userUid, String gender});

  @override
  $TicketCopyWith<$Res> get ticket;
  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$_PurchaseIntentCopyWithImpl<$Res>
    extends _$PurchaseIntentCopyWithImpl<$Res, _$_PurchaseIntent>
    implements _$$_PurchaseIntentCopyWith<$Res> {
  __$$_PurchaseIntentCopyWithImpl(
      _$_PurchaseIntent _value, $Res Function(_$_PurchaseIntent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? event = null,
    Object? userUid = null,
    Object? gender = null,
  }) {
    return _then(_$_PurchaseIntent(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseIntent implements _PurchaseIntent {
  const _$_PurchaseIntent(
      {required this.ticket,
      required this.event,
      required this.userUid,
      required this.gender});

  factory _$_PurchaseIntent.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseIntentFromJson(json);

  @override
  final Ticket ticket;
  @override
  final EventModel event;
  @override
  final String userUid;
  @override
  final String gender;

  @override
  String toString() {
    return 'PurchaseIntent(ticket: $ticket, event: $event, userUid: $userUid, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseIntent &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticket, event, userUid, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseIntentCopyWith<_$_PurchaseIntent> get copyWith =>
      __$$_PurchaseIntentCopyWithImpl<_$_PurchaseIntent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseIntentToJson(
      this,
    );
  }
}

abstract class _PurchaseIntent implements PurchaseIntent {
  const factory _PurchaseIntent(
      {required final Ticket ticket,
      required final EventModel event,
      required final String userUid,
      required final String gender}) = _$_PurchaseIntent;

  factory _PurchaseIntent.fromJson(Map<String, dynamic> json) =
      _$_PurchaseIntent.fromJson;

  @override
  Ticket get ticket;
  @override
  EventModel get event;
  @override
  String get userUid;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseIntentCopyWith<_$_PurchaseIntent> get copyWith =>
      throw _privateConstructorUsedError;
}
