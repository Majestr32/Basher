// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTicketModel _$UserTicketModelFromJson(Map<String, dynamic> json) {
  return _UserTicketModel.fromJson(json);
}

/// @nodoc
mixin _$UserTicketModel {
  @JsonKey(name: 'qr_core')
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket')
  Ticket get ticket => throw _privateConstructorUsedError;
  @JsonKey(name: 'event')
  EventModel get event => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_uid')
  String get ticketUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_uid')
  String get eventUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTicketModelCopyWith<UserTicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTicketModelCopyWith<$Res> {
  factory $UserTicketModelCopyWith(
          UserTicketModel value, $Res Function(UserTicketModel) then) =
      _$UserTicketModelCopyWithImpl<$Res, UserTicketModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'qr_core') String qrCode,
      @JsonKey(name: 'ticket') Ticket ticket,
      @JsonKey(name: 'event') EventModel event,
      @JsonKey(name: 'ticket_uid') String ticketUid,
      @JsonKey(name: 'event_uid') String eventUid});

  $TicketCopyWith<$Res> get ticket;
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$UserTicketModelCopyWithImpl<$Res, $Val extends UserTicketModel>
    implements $UserTicketModelCopyWith<$Res> {
  _$UserTicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
    Object? ticket = null,
    Object? event = null,
    Object? ticketUid = null,
    Object? eventUid = null,
  }) {
    return _then(_value.copyWith(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      ticketUid: null == ticketUid
          ? _value.ticketUid
          : ticketUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserTicketModelCopyWith<$Res>
    implements $UserTicketModelCopyWith<$Res> {
  factory _$$_UserTicketModelCopyWith(
          _$_UserTicketModel value, $Res Function(_$_UserTicketModel) then) =
      __$$_UserTicketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'qr_core') String qrCode,
      @JsonKey(name: 'ticket') Ticket ticket,
      @JsonKey(name: 'event') EventModel event,
      @JsonKey(name: 'ticket_uid') String ticketUid,
      @JsonKey(name: 'event_uid') String eventUid});

  @override
  $TicketCopyWith<$Res> get ticket;
  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$_UserTicketModelCopyWithImpl<$Res>
    extends _$UserTicketModelCopyWithImpl<$Res, _$_UserTicketModel>
    implements _$$_UserTicketModelCopyWith<$Res> {
  __$$_UserTicketModelCopyWithImpl(
      _$_UserTicketModel _value, $Res Function(_$_UserTicketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
    Object? ticket = null,
    Object? event = null,
    Object? ticketUid = null,
    Object? eventUid = null,
  }) {
    return _then(_$_UserTicketModel(
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      ticketUid: null == ticketUid
          ? _value.ticketUid
          : ticketUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserTicketModel
    with DiagnosticableTreeMixin
    implements _UserTicketModel {
  const _$_UserTicketModel(
      {@JsonKey(name: 'qr_core') required this.qrCode,
      @JsonKey(name: 'ticket') required this.ticket,
      @JsonKey(name: 'event') required this.event,
      @JsonKey(name: 'ticket_uid') required this.ticketUid,
      @JsonKey(name: 'event_uid') required this.eventUid});

  factory _$_UserTicketModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserTicketModelFromJson(json);

  @override
  @JsonKey(name: 'qr_core')
  final String qrCode;
  @override
  @JsonKey(name: 'ticket')
  final Ticket ticket;
  @override
  @JsonKey(name: 'event')
  final EventModel event;
  @override
  @JsonKey(name: 'ticket_uid')
  final String ticketUid;
  @override
  @JsonKey(name: 'event_uid')
  final String eventUid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTicketModel(qrCode: $qrCode, ticket: $ticket, event: $event, ticketUid: $ticketUid, eventUid: $eventUid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserTicketModel'))
      ..add(DiagnosticsProperty('qrCode', qrCode))
      ..add(DiagnosticsProperty('ticket', ticket))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('ticketUid', ticketUid))
      ..add(DiagnosticsProperty('eventUid', eventUid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserTicketModel &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.ticketUid, ticketUid) ||
                other.ticketUid == ticketUid) &&
            (identical(other.eventUid, eventUid) ||
                other.eventUid == eventUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, qrCode, ticket, event, ticketUid, eventUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserTicketModelCopyWith<_$_UserTicketModel> get copyWith =>
      __$$_UserTicketModelCopyWithImpl<_$_UserTicketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserTicketModelToJson(
      this,
    );
  }
}

abstract class _UserTicketModel implements UserTicketModel {
  const factory _UserTicketModel(
          {@JsonKey(name: 'qr_core') required final String qrCode,
          @JsonKey(name: 'ticket') required final Ticket ticket,
          @JsonKey(name: 'event') required final EventModel event,
          @JsonKey(name: 'ticket_uid') required final String ticketUid,
          @JsonKey(name: 'event_uid') required final String eventUid}) =
      _$_UserTicketModel;

  factory _UserTicketModel.fromJson(Map<String, dynamic> json) =
      _$_UserTicketModel.fromJson;

  @override
  @JsonKey(name: 'qr_core')
  String get qrCode;
  @override
  @JsonKey(name: 'ticket')
  Ticket get ticket;
  @override
  @JsonKey(name: 'event')
  EventModel get event;
  @override
  @JsonKey(name: 'ticket_uid')
  String get ticketUid;
  @override
  @JsonKey(name: 'event_uid')
  String get eventUid;
  @override
  @JsonKey(ignore: true)
  _$$_UserTicketModelCopyWith<_$_UserTicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
