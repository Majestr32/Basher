// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_join_request_stamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupJoinRequestStamp _$GroupJoinRequestStampFromJson(
    Map<String, dynamic> json) {
  return _GroupJoinRequestStamp.fromJson(json);
}

/// @nodoc
mixin _$GroupJoinRequestStamp {
  @JsonKey(name: 'to_user_uid')
  String get toUserUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_uid')
  String get eventUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_join_request_uid')
  String get originalJoinRequestUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupJoinRequestStampCopyWith<GroupJoinRequestStamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupJoinRequestStampCopyWith<$Res> {
  factory $GroupJoinRequestStampCopyWith(GroupJoinRequestStamp value,
          $Res Function(GroupJoinRequestStamp) then) =
      _$GroupJoinRequestStampCopyWithImpl<$Res, GroupJoinRequestStamp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'to_user_uid')
          String toUserUid,
      @JsonKey(name: 'event_uid')
          String eventUid,
      @JsonKey(name: 'original_join_request_uid')
          String originalJoinRequestUid});
}

/// @nodoc
class _$GroupJoinRequestStampCopyWithImpl<$Res,
        $Val extends GroupJoinRequestStamp>
    implements $GroupJoinRequestStampCopyWith<$Res> {
  _$GroupJoinRequestStampCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toUserUid = null,
    Object? eventUid = null,
    Object? originalJoinRequestUid = null,
  }) {
    return _then(_value.copyWith(
      toUserUid: null == toUserUid
          ? _value.toUserUid
          : toUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
      originalJoinRequestUid: null == originalJoinRequestUid
          ? _value.originalJoinRequestUid
          : originalJoinRequestUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupJoinRequestStampCopyWith<$Res>
    implements $GroupJoinRequestStampCopyWith<$Res> {
  factory _$$_GroupJoinRequestStampCopyWith(_$_GroupJoinRequestStamp value,
          $Res Function(_$_GroupJoinRequestStamp) then) =
      __$$_GroupJoinRequestStampCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'to_user_uid')
          String toUserUid,
      @JsonKey(name: 'event_uid')
          String eventUid,
      @JsonKey(name: 'original_join_request_uid')
          String originalJoinRequestUid});
}

/// @nodoc
class __$$_GroupJoinRequestStampCopyWithImpl<$Res>
    extends _$GroupJoinRequestStampCopyWithImpl<$Res, _$_GroupJoinRequestStamp>
    implements _$$_GroupJoinRequestStampCopyWith<$Res> {
  __$$_GroupJoinRequestStampCopyWithImpl(_$_GroupJoinRequestStamp _value,
      $Res Function(_$_GroupJoinRequestStamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toUserUid = null,
    Object? eventUid = null,
    Object? originalJoinRequestUid = null,
  }) {
    return _then(_$_GroupJoinRequestStamp(
      toUserUid: null == toUserUid
          ? _value.toUserUid
          : toUserUid // ignore: cast_nullable_to_non_nullable
              as String,
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
      originalJoinRequestUid: null == originalJoinRequestUid
          ? _value.originalJoinRequestUid
          : originalJoinRequestUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupJoinRequestStamp
    with DiagnosticableTreeMixin
    implements _GroupJoinRequestStamp {
  const _$_GroupJoinRequestStamp(
      {@JsonKey(name: 'to_user_uid')
          required this.toUserUid,
      @JsonKey(name: 'event_uid')
          required this.eventUid,
      @JsonKey(name: 'original_join_request_uid')
          required this.originalJoinRequestUid});

  factory _$_GroupJoinRequestStamp.fromJson(Map<String, dynamic> json) =>
      _$$_GroupJoinRequestStampFromJson(json);

  @override
  @JsonKey(name: 'to_user_uid')
  final String toUserUid;
  @override
  @JsonKey(name: 'event_uid')
  final String eventUid;
  @override
  @JsonKey(name: 'original_join_request_uid')
  final String originalJoinRequestUid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupJoinRequestStamp(toUserUid: $toUserUid, eventUid: $eventUid, originalJoinRequestUid: $originalJoinRequestUid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupJoinRequestStamp'))
      ..add(DiagnosticsProperty('toUserUid', toUserUid))
      ..add(DiagnosticsProperty('eventUid', eventUid))
      ..add(DiagnosticsProperty(
          'originalJoinRequestUid', originalJoinRequestUid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupJoinRequestStamp &&
            (identical(other.toUserUid, toUserUid) ||
                other.toUserUid == toUserUid) &&
            (identical(other.eventUid, eventUid) ||
                other.eventUid == eventUid) &&
            (identical(other.originalJoinRequestUid, originalJoinRequestUid) ||
                other.originalJoinRequestUid == originalJoinRequestUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, toUserUid, eventUid, originalJoinRequestUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupJoinRequestStampCopyWith<_$_GroupJoinRequestStamp> get copyWith =>
      __$$_GroupJoinRequestStampCopyWithImpl<_$_GroupJoinRequestStamp>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupJoinRequestStampToJson(
      this,
    );
  }
}

abstract class _GroupJoinRequestStamp implements GroupJoinRequestStamp {
  const factory _GroupJoinRequestStamp(
          {@JsonKey(name: 'to_user_uid')
              required final String toUserUid,
          @JsonKey(name: 'event_uid')
              required final String eventUid,
          @JsonKey(name: 'original_join_request_uid')
              required final String originalJoinRequestUid}) =
      _$_GroupJoinRequestStamp;

  factory _GroupJoinRequestStamp.fromJson(Map<String, dynamic> json) =
      _$_GroupJoinRequestStamp.fromJson;

  @override
  @JsonKey(name: 'to_user_uid')
  String get toUserUid;
  @override
  @JsonKey(name: 'event_uid')
  String get eventUid;
  @override
  @JsonKey(name: 'original_join_request_uid')
  String get originalJoinRequestUid;
  @override
  @JsonKey(ignore: true)
  _$$_GroupJoinRequestStampCopyWith<_$_GroupJoinRequestStamp> get copyWith =>
      throw _privateConstructorUsedError;
}
