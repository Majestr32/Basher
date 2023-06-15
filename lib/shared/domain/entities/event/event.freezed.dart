// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Event {
  EventModel get eventModel => throw _privateConstructorUsedError;
  List<String> get friendsUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call({EventModel eventModel, List<String> friendsUid});

  $EventModelCopyWith<$Res> get eventModel;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = null,
    Object? friendsUid = null,
  }) {
    return _then(_value.copyWith(
      eventModel: null == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
      friendsUid: null == friendsUid
          ? _value.friendsUid
          : friendsUid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get eventModel {
    return $EventModelCopyWith<$Res>(_value.eventModel, (value) {
      return _then(_value.copyWith(eventModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventModel eventModel, List<String> friendsUid});

  @override
  $EventModelCopyWith<$Res> get eventModel;
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = null,
    Object? friendsUid = null,
  }) {
    return _then(_$_Event(
      eventModel: null == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
      friendsUid: null == friendsUid
          ? _value._friendsUid
          : friendsUid // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Event extends _Event {
  const _$_Event(
      {required this.eventModel, required final List<String> friendsUid})
      : _friendsUid = friendsUid,
        super._();

  @override
  final EventModel eventModel;
  final List<String> _friendsUid;
  @override
  List<String> get friendsUid {
    if (_friendsUid is EqualUnmodifiableListView) return _friendsUid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendsUid);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.eventModel, eventModel) ||
                other.eventModel == eventModel) &&
            const DeepCollectionEquality()
                .equals(other._friendsUid, _friendsUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventModel,
      const DeepCollectionEquality().hash(_friendsUid));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);
}

abstract class _Event extends Event {
  const factory _Event(
      {required final EventModel eventModel,
      required final List<String> friendsUid}) = _$_Event;
  const _Event._() : super._();

  @override
  EventModel get eventModel;
  @override
  List<String> get friendsUid;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
