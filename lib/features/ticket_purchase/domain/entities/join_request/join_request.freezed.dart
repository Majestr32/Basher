// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) {
  return _JoinRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinRequest {
  User get fromUser => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_members')
  List<JoinRequest> get groupMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_user_uid')
  String get fromUserUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_user_uid')
  String get toUserUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_uid')
  String get eventUid => throw _privateConstructorUsedError;
  bool? get accepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestCopyWith<JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestCopyWith<$Res> {
  factory $JoinRequestCopyWith(
          JoinRequest value, $Res Function(JoinRequest) then) =
      _$JoinRequestCopyWithImpl<$Res, JoinRequest>;
  @useResult
  $Res call(
      {User fromUser,
      EventModel event,
      String? uid,
      @JsonKey(name: 'group_members') List<JoinRequest> groupMembers,
      @JsonKey(name: 'from_user_uid') String fromUserUid,
      @JsonKey(name: 'to_user_uid') String toUserUid,
      @JsonKey(name: 'event_uid') String eventUid,
      bool? accepted});

  $UserCopyWith<$Res> get fromUser;
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$JoinRequestCopyWithImpl<$Res, $Val extends JoinRequest>
    implements $JoinRequestCopyWith<$Res> {
  _$JoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromUser = null,
    Object? event = null,
    Object? uid = freezed,
    Object? groupMembers = null,
    Object? fromUserUid = null,
    Object? toUserUid = null,
    Object? eventUid = null,
    Object? accepted = freezed,
  }) {
    return _then(_value.copyWith(
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as User,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      groupMembers: null == groupMembers
          ? _value.groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      fromUserUid: null == fromUserUid
          ? _value.fromUserUid
          : fromUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      toUserUid: null == toUserUid
          ? _value.toUserUid
          : toUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: freezed == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get fromUser {
    return $UserCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
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
abstract class _$$_JoinRequestCopyWith<$Res>
    implements $JoinRequestCopyWith<$Res> {
  factory _$$_JoinRequestCopyWith(
          _$_JoinRequest value, $Res Function(_$_JoinRequest) then) =
      __$$_JoinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User fromUser,
      EventModel event,
      String? uid,
      @JsonKey(name: 'group_members') List<JoinRequest> groupMembers,
      @JsonKey(name: 'from_user_uid') String fromUserUid,
      @JsonKey(name: 'to_user_uid') String toUserUid,
      @JsonKey(name: 'event_uid') String eventUid,
      bool? accepted});

  @override
  $UserCopyWith<$Res> get fromUser;
  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$_JoinRequestCopyWithImpl<$Res>
    extends _$JoinRequestCopyWithImpl<$Res, _$_JoinRequest>
    implements _$$_JoinRequestCopyWith<$Res> {
  __$$_JoinRequestCopyWithImpl(
      _$_JoinRequest _value, $Res Function(_$_JoinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromUser = null,
    Object? event = null,
    Object? uid = freezed,
    Object? groupMembers = null,
    Object? fromUserUid = null,
    Object? toUserUid = null,
    Object? eventUid = null,
    Object? accepted = freezed,
  }) {
    return _then(_$_JoinRequest(
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as User,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      groupMembers: null == groupMembers
          ? _value._groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      fromUserUid: null == fromUserUid
          ? _value.fromUserUid
          : fromUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      toUserUid: null == toUserUid
          ? _value.toUserUid
          : toUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: freezed == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinRequest with DiagnosticableTreeMixin implements _JoinRequest {
  const _$_JoinRequest(
      {required this.fromUser,
      required this.event,
      this.uid,
      @JsonKey(name: 'group_members')
          final List<JoinRequest> groupMembers = const [],
      @JsonKey(name: 'from_user_uid')
          required this.fromUserUid,
      @JsonKey(name: 'to_user_uid')
          required this.toUserUid,
      @JsonKey(name: 'event_uid')
          required this.eventUid,
      this.accepted})
      : _groupMembers = groupMembers;

  factory _$_JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestFromJson(json);

  @override
  final User fromUser;
  @override
  final EventModel event;
  @override
  final String? uid;
  final List<JoinRequest> _groupMembers;
  @override
  @JsonKey(name: 'group_members')
  List<JoinRequest> get groupMembers {
    if (_groupMembers is EqualUnmodifiableListView) return _groupMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupMembers);
  }

  @override
  @JsonKey(name: 'from_user_uid')
  final String fromUserUid;
  @override
  @JsonKey(name: 'to_user_uid')
  final String toUserUid;
  @override
  @JsonKey(name: 'event_uid')
  final String eventUid;
  @override
  final bool? accepted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinRequest(fromUser: $fromUser, event: $event, uid: $uid, groupMembers: $groupMembers, fromUserUid: $fromUserUid, toUserUid: $toUserUid, eventUid: $eventUid, accepted: $accepted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinRequest'))
      ..add(DiagnosticsProperty('fromUser', fromUser))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('groupMembers', groupMembers))
      ..add(DiagnosticsProperty('fromUserUid', fromUserUid))
      ..add(DiagnosticsProperty('toUserUid', toUserUid))
      ..add(DiagnosticsProperty('eventUid', eventUid))
      ..add(DiagnosticsProperty('accepted', accepted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequest &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality()
                .equals(other._groupMembers, _groupMembers) &&
            (identical(other.fromUserUid, fromUserUid) ||
                other.fromUserUid == fromUserUid) &&
            (identical(other.toUserUid, toUserUid) ||
                other.toUserUid == toUserUid) &&
            (identical(other.eventUid, eventUid) ||
                other.eventUid == eventUid) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromUser,
      event,
      uid,
      const DeepCollectionEquality().hash(_groupMembers),
      fromUserUid,
      toUserUid,
      eventUid,
      accepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRequestCopyWith<_$_JoinRequest> get copyWith =>
      __$$_JoinRequestCopyWithImpl<_$_JoinRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinRequestToJson(
      this,
    );
  }
}

abstract class _JoinRequest implements JoinRequest {
  const factory _JoinRequest(
      {required final User fromUser,
      required final EventModel event,
      final String? uid,
      @JsonKey(name: 'group_members') final List<JoinRequest> groupMembers,
      @JsonKey(name: 'from_user_uid') required final String fromUserUid,
      @JsonKey(name: 'to_user_uid') required final String toUserUid,
      @JsonKey(name: 'event_uid') required final String eventUid,
      final bool? accepted}) = _$_JoinRequest;

  factory _JoinRequest.fromJson(Map<String, dynamic> json) =
      _$_JoinRequest.fromJson;

  @override
  User get fromUser;
  @override
  EventModel get event;
  @override
  String? get uid;
  @override
  @JsonKey(name: 'group_members')
  List<JoinRequest> get groupMembers;
  @override
  @JsonKey(name: 'from_user_uid')
  String get fromUserUid;
  @override
  @JsonKey(name: 'to_user_uid')
  String get toUserUid;
  @override
  @JsonKey(name: 'event_uid')
  String get eventUid;
  @override
  bool? get accepted;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestCopyWith<_$_JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
