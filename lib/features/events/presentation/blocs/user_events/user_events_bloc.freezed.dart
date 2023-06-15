// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventsEventCopyWith<$Res> {
  factory $UserEventsEventCopyWith(
          UserEventsEvent value, $Res Function(UserEventsEvent) then) =
      _$UserEventsEventCopyWithImpl<$Res, UserEventsEvent>;
}

/// @nodoc
class _$UserEventsEventCopyWithImpl<$Res, $Val extends UserEventsEvent>
    implements $UserEventsEventCopyWith<$Res> {
  _$UserEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchUserEventsEventCopyWith<$Res> {
  factory _$$_FetchUserEventsEventCopyWith(_$_FetchUserEventsEvent value,
          $Res Function(_$_FetchUserEventsEvent) then) =
      __$$_FetchUserEventsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String organiserUid});
}

/// @nodoc
class __$$_FetchUserEventsEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_FetchUserEventsEvent>
    implements _$$_FetchUserEventsEventCopyWith<$Res> {
  __$$_FetchUserEventsEventCopyWithImpl(_$_FetchUserEventsEvent _value,
      $Res Function(_$_FetchUserEventsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organiserUid = null,
  }) {
    return _then(_$_FetchUserEventsEvent(
      organiserUid: null == organiserUid
          ? _value.organiserUid
          : organiserUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchUserEventsEvent implements _FetchUserEventsEvent {
  const _$_FetchUserEventsEvent({required this.organiserUid});

  @override
  final String organiserUid;

  @override
  String toString() {
    return 'UserEventsEvent.fetchUserEvents(organiserUid: $organiserUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserEventsEvent &&
            (identical(other.organiserUid, organiserUid) ||
                other.organiserUid == organiserUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organiserUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserEventsEventCopyWith<_$_FetchUserEventsEvent> get copyWith =>
      __$$_FetchUserEventsEventCopyWithImpl<_$_FetchUserEventsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return fetchUserEvents(organiserUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return fetchUserEvents?.call(organiserUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchUserEvents != null) {
      return fetchUserEvents(organiserUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return fetchUserEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return fetchUserEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (fetchUserEvents != null) {
      return fetchUserEvents(this);
    }
    return orElse();
  }
}

abstract class _FetchUserEventsEvent implements UserEventsEvent {
  const factory _FetchUserEventsEvent({required final String organiserUid}) =
      _$_FetchUserEventsEvent;

  String get organiserUid;
  @JsonKey(ignore: true)
  _$$_FetchUserEventsEventCopyWith<_$_FetchUserEventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateEventEventCopyWith<$Res> {
  factory _$$_CreateEventEventCopyWith(
          _$_CreateEventEvent value, $Res Function(_$_CreateEventEvent) then) =
      __$$_CreateEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event, String? imgPath});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_CreateEventEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_CreateEventEvent>
    implements _$$_CreateEventEventCopyWith<$Res> {
  __$$_CreateEventEventCopyWithImpl(
      _$_CreateEventEvent _value, $Res Function(_$_CreateEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? imgPath = freezed,
  }) {
    return _then(_$_CreateEventEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_CreateEventEvent implements _CreateEventEvent {
  const _$_CreateEventEvent({required this.event, this.imgPath});

  @override
  final Event event;
  @override
  final String? imgPath;

  @override
  String toString() {
    return 'UserEventsEvent.createEvent(event: $event, imgPath: $imgPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEventEvent &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, imgPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateEventEventCopyWith<_$_CreateEventEvent> get copyWith =>
      __$$_CreateEventEventCopyWithImpl<_$_CreateEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return createEvent(event, imgPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return createEvent?.call(event, imgPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(event, imgPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return createEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return createEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(this);
    }
    return orElse();
  }
}

abstract class _CreateEventEvent implements UserEventsEvent {
  const factory _CreateEventEvent(
      {required final Event event,
      final String? imgPath}) = _$_CreateEventEvent;

  Event get event;
  String? get imgPath;
  @JsonKey(ignore: true)
  _$$_CreateEventEventCopyWith<_$_CreateEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PublishEventEventCopyWith<$Res> {
  factory _$$_PublishEventEventCopyWith(_$_PublishEventEvent value,
          $Res Function(_$_PublishEventEvent) then) =
      __$$_PublishEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_PublishEventEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_PublishEventEvent>
    implements _$$_PublishEventEventCopyWith<$Res> {
  __$$_PublishEventEventCopyWithImpl(
      _$_PublishEventEvent _value, $Res Function(_$_PublishEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_PublishEventEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_PublishEventEvent implements _PublishEventEvent {
  const _$_PublishEventEvent({required this.event});

  @override
  final Event event;

  @override
  String toString() {
    return 'UserEventsEvent.publishEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublishEventEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublishEventEventCopyWith<_$_PublishEventEvent> get copyWith =>
      __$$_PublishEventEventCopyWithImpl<_$_PublishEventEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return publishEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return publishEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (publishEvent != null) {
      return publishEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return publishEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return publishEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (publishEvent != null) {
      return publishEvent(this);
    }
    return orElse();
  }
}

abstract class _PublishEventEvent implements UserEventsEvent {
  const factory _PublishEventEvent({required final Event event}) =
      _$_PublishEventEvent;

  Event get event;
  @JsonKey(ignore: true)
  _$$_PublishEventEventCopyWith<_$_PublishEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEventEventCopyWith<$Res> {
  factory _$$_DeleteEventEventCopyWith(
          _$_DeleteEventEvent value, $Res Function(_$_DeleteEventEvent) then) =
      __$$_DeleteEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventUid});
}

/// @nodoc
class __$$_DeleteEventEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_DeleteEventEvent>
    implements _$$_DeleteEventEventCopyWith<$Res> {
  __$$_DeleteEventEventCopyWithImpl(
      _$_DeleteEventEvent _value, $Res Function(_$_DeleteEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventUid = null,
  }) {
    return _then(_$_DeleteEventEvent(
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteEventEvent implements _DeleteEventEvent {
  const _$_DeleteEventEvent({required this.eventUid});

  @override
  final String eventUid;

  @override
  String toString() {
    return 'UserEventsEvent.deleteEvent(eventUid: $eventUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEventEvent &&
            (identical(other.eventUid, eventUid) ||
                other.eventUid == eventUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEventEventCopyWith<_$_DeleteEventEvent> get copyWith =>
      __$$_DeleteEventEventCopyWithImpl<_$_DeleteEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return deleteEvent(eventUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return deleteEvent?.call(eventUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(eventUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEventEvent implements UserEventsEvent {
  const factory _DeleteEventEvent({required final String eventUid}) =
      _$_DeleteEventEvent;

  String get eventUid;
  @JsonKey(ignore: true)
  _$$_DeleteEventEventCopyWith<_$_DeleteEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEventEventCopyWith<$Res> {
  factory _$$_UpdateEventEventCopyWith(
          _$_UpdateEventEvent value, $Res Function(_$_UpdateEventEvent) then) =
      __$$_UpdateEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event, String? imgPath});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_UpdateEventEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_UpdateEventEvent>
    implements _$$_UpdateEventEventCopyWith<$Res> {
  __$$_UpdateEventEventCopyWithImpl(
      _$_UpdateEventEvent _value, $Res Function(_$_UpdateEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? imgPath = freezed,
  }) {
    return _then(_$_UpdateEventEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_UpdateEventEvent implements _UpdateEventEvent {
  const _$_UpdateEventEvent({required this.event, this.imgPath});

  @override
  final Event event;
  @override
  final String? imgPath;

  @override
  String toString() {
    return 'UserEventsEvent.updateEvent(event: $event, imgPath: $imgPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEventEvent &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, imgPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventEventCopyWith<_$_UpdateEventEvent> get copyWith =>
      __$$_UpdateEventEventCopyWithImpl<_$_UpdateEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return updateEvent(event, imgPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return updateEvent?.call(event, imgPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event, imgPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateEventEvent implements UserEventsEvent {
  const factory _UpdateEventEvent(
      {required final Event event,
      final String? imgPath}) = _$_UpdateEventEvent;

  Event get event;
  String? get imgPath;
  @JsonKey(ignore: true)
  _$$_UpdateEventEventCopyWith<_$_UpdateEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetEventCopyWith<$Res> {
  factory _$$_ResetEventCopyWith(
          _$_ResetEvent value, $Res Function(_$_ResetEvent) then) =
      __$$_ResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetEventCopyWithImpl<$Res>
    extends _$UserEventsEventCopyWithImpl<$Res, _$_ResetEvent>
    implements _$$_ResetEventCopyWith<$Res> {
  __$$_ResetEventCopyWithImpl(
      _$_ResetEvent _value, $Res Function(_$_ResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetEvent implements _ResetEvent {
  const _$_ResetEvent();

  @override
  String toString() {
    return 'UserEventsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String organiserUid) fetchUserEvents,
    required TResult Function(Event event, String? imgPath) createEvent,
    required TResult Function(Event event) publishEvent,
    required TResult Function(String eventUid) deleteEvent,
    required TResult Function(Event event, String? imgPath) updateEvent,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String organiserUid)? fetchUserEvents,
    TResult? Function(Event event, String? imgPath)? createEvent,
    TResult? Function(Event event)? publishEvent,
    TResult? Function(String eventUid)? deleteEvent,
    TResult? Function(Event event, String? imgPath)? updateEvent,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String organiserUid)? fetchUserEvents,
    TResult Function(Event event, String? imgPath)? createEvent,
    TResult Function(Event event)? publishEvent,
    TResult Function(String eventUid)? deleteEvent,
    TResult Function(Event event, String? imgPath)? updateEvent,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEventsEvent value) fetchUserEvents,
    required TResult Function(_CreateEventEvent value) createEvent,
    required TResult Function(_PublishEventEvent value) publishEvent,
    required TResult Function(_DeleteEventEvent value) deleteEvent,
    required TResult Function(_UpdateEventEvent value) updateEvent,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult? Function(_CreateEventEvent value)? createEvent,
    TResult? Function(_PublishEventEvent value)? publishEvent,
    TResult? Function(_DeleteEventEvent value)? deleteEvent,
    TResult? Function(_UpdateEventEvent value)? updateEvent,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEventsEvent value)? fetchUserEvents,
    TResult Function(_CreateEventEvent value)? createEvent,
    TResult Function(_PublishEventEvent value)? publishEvent,
    TResult Function(_DeleteEventEvent value)? deleteEvent,
    TResult Function(_UpdateEventEvent value)? updateEvent,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements UserEventsEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
mixin _$UserEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventsStateCopyWith<$Res> {
  factory $UserEventsStateCopyWith(
          UserEventsState value, $Res Function(UserEventsState) then) =
      _$UserEventsStateCopyWithImpl<$Res, UserEventsState>;
}

/// @nodoc
class _$UserEventsStateCopyWithImpl<$Res, $Val extends UserEventsState>
    implements $UserEventsStateCopyWith<$Res> {
  _$UserEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'UserEventsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends UserEventsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState extends _LoadingState {
  const _$_LoadingState() : super._();

  @override
  String toString() {
    return 'UserEventsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends UserEventsState {
  const factory _LoadingState() = _$_LoadingState;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_LoadedState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required final List<Event> events})
      : _events = events,
        super._();

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'UserEventsState.loaded(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends UserEventsState {
  const factory _LoadedState({required final List<Event> events}) =
      _$_LoadedState;
  const _LoadedState._() : super._();

  List<Event> get events;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedEventStateCopyWith<$Res> {
  factory _$$_AddedEventStateCopyWith(
          _$_AddedEventState value, $Res Function(_$_AddedEventState) then) =
      __$$_AddedEventStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_AddedEventStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_AddedEventState>
    implements _$$_AddedEventStateCopyWith<$Res> {
  __$$_AddedEventStateCopyWithImpl(
      _$_AddedEventState _value, $Res Function(_$_AddedEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_AddedEventState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_AddedEventState extends _AddedEventState {
  const _$_AddedEventState({required this.event}) : super._();

  @override
  final Event event;

  @override
  String toString() {
    return 'UserEventsState.addedEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedEventState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedEventStateCopyWith<_$_AddedEventState> get copyWith =>
      __$$_AddedEventStateCopyWithImpl<_$_AddedEventState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return addedEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return addedEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (addedEvent != null) {
      return addedEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return addedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return addedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (addedEvent != null) {
      return addedEvent(this);
    }
    return orElse();
  }
}

abstract class _AddedEventState extends UserEventsState {
  const factory _AddedEventState({required final Event event}) =
      _$_AddedEventState;
  const _AddedEventState._() : super._();

  Event get event;
  @JsonKey(ignore: true)
  _$$_AddedEventStateCopyWith<_$_AddedEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PublishedEventStateCopyWith<$Res> {
  factory _$$_PublishedEventStateCopyWith(_$_PublishedEventState value,
          $Res Function(_$_PublishedEventState) then) =
      __$$_PublishedEventStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_PublishedEventStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_PublishedEventState>
    implements _$$_PublishedEventStateCopyWith<$Res> {
  __$$_PublishedEventStateCopyWithImpl(_$_PublishedEventState _value,
      $Res Function(_$_PublishedEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_PublishedEventState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_PublishedEventState extends _PublishedEventState {
  const _$_PublishedEventState({required this.event}) : super._();

  @override
  final Event event;

  @override
  String toString() {
    return 'UserEventsState.publishedEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublishedEventState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublishedEventStateCopyWith<_$_PublishedEventState> get copyWith =>
      __$$_PublishedEventStateCopyWithImpl<_$_PublishedEventState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return publishedEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return publishedEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (publishedEvent != null) {
      return publishedEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return publishedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return publishedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (publishedEvent != null) {
      return publishedEvent(this);
    }
    return orElse();
  }
}

abstract class _PublishedEventState extends UserEventsState {
  const factory _PublishedEventState({required final Event event}) =
      _$_PublishedEventState;
  const _PublishedEventState._() : super._();

  Event get event;
  @JsonKey(ignore: true)
  _$$_PublishedEventStateCopyWith<_$_PublishedEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatedEventStateCopyWith<$Res> {
  factory _$$_UpdatedEventStateCopyWith(_$_UpdatedEventState value,
          $Res Function(_$_UpdatedEventState) then) =
      __$$_UpdatedEventStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_UpdatedEventStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_UpdatedEventState>
    implements _$$_UpdatedEventStateCopyWith<$Res> {
  __$$_UpdatedEventStateCopyWithImpl(
      _$_UpdatedEventState _value, $Res Function(_$_UpdatedEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_UpdatedEventState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_UpdatedEventState extends _UpdatedEventState {
  const _$_UpdatedEventState({required this.event}) : super._();

  @override
  final Event event;

  @override
  String toString() {
    return 'UserEventsState.updatedEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedEventState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedEventStateCopyWith<_$_UpdatedEventState> get copyWith =>
      __$$_UpdatedEventStateCopyWithImpl<_$_UpdatedEventState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return updatedEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return updatedEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (updatedEvent != null) {
      return updatedEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return updatedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return updatedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (updatedEvent != null) {
      return updatedEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdatedEventState extends UserEventsState {
  const factory _UpdatedEventState({required final Event event}) =
      _$_UpdatedEventState;
  const _UpdatedEventState._() : super._();

  Event get event;
  @JsonKey(ignore: true)
  _$$_UpdatedEventStateCopyWith<_$_UpdatedEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedTicketStateCopyWith<$Res> {
  factory _$$_AddedTicketStateCopyWith(
          _$_AddedTicketState value, $Res Function(_$_AddedTicketState) then) =
      __$$_AddedTicketStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_AddedTicketStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_AddedTicketState>
    implements _$$_AddedTicketStateCopyWith<$Res> {
  __$$_AddedTicketStateCopyWithImpl(
      _$_AddedTicketState _value, $Res Function(_$_AddedTicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_AddedTicketState(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res> get ticket {
    return $TicketCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$_AddedTicketState extends _AddedTicketState {
  const _$_AddedTicketState({required this.ticket}) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'UserEventsState.addedTicket(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedTicketState &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedTicketStateCopyWith<_$_AddedTicketState> get copyWith =>
      __$$_AddedTicketStateCopyWithImpl<_$_AddedTicketState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return addedTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return addedTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (addedTicket != null) {
      return addedTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return addedTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return addedTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (addedTicket != null) {
      return addedTicket(this);
    }
    return orElse();
  }
}

abstract class _AddedTicketState extends UserEventsState {
  const factory _AddedTicketState({required final Ticket ticket}) =
      _$_AddedTicketState;
  const _AddedTicketState._() : super._();

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_AddedTicketStateCopyWith<_$_AddedTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletedEventStateCopyWith<$Res> {
  factory _$$_DeletedEventStateCopyWith(_$_DeletedEventState value,
          $Res Function(_$_DeletedEventState) then) =
      __$$_DeletedEventStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$_DeletedEventStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_DeletedEventState>
    implements _$$_DeletedEventStateCopyWith<$Res> {
  __$$_DeletedEventStateCopyWithImpl(
      _$_DeletedEventState _value, $Res Function(_$_DeletedEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_DeletedEventState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_DeletedEventState extends _DeletedEventState {
  const _$_DeletedEventState({required final List<Event> events})
      : _events = events,
        super._();

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'UserEventsState.deletedEvent(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletedEventState &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedEventStateCopyWith<_$_DeletedEventState> get copyWith =>
      __$$_DeletedEventStateCopyWithImpl<_$_DeletedEventState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return deletedEvent(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return deletedEvent?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (deletedEvent != null) {
      return deletedEvent(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return deletedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return deletedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (deletedEvent != null) {
      return deletedEvent(this);
    }
    return orElse();
  }
}

abstract class _DeletedEventState extends UserEventsState {
  const factory _DeletedEventState({required final List<Event> events}) =
      _$_DeletedEventState;
  const _DeletedEventState._() : super._();

  List<Event> get events;
  @JsonKey(ignore: true)
  _$$_DeletedEventStateCopyWith<_$_DeletedEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$UserEventsStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ErrorState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState({required this.failure}) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserEventsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Event event) addedEvent,
    required TResult Function(Event event) publishedEvent,
    required TResult Function(Event event) updatedEvent,
    required TResult Function(Ticket ticket) addedTicket,
    required TResult Function(List<Event> events) deletedEvent,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Event event)? addedEvent,
    TResult? Function(Event event)? publishedEvent,
    TResult? Function(Event event)? updatedEvent,
    TResult? Function(Ticket ticket)? addedTicket,
    TResult? Function(List<Event> events)? deletedEvent,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Event event)? addedEvent,
    TResult Function(Event event)? publishedEvent,
    TResult Function(Event event)? updatedEvent,
    TResult Function(Ticket ticket)? addedTicket,
    TResult Function(List<Event> events)? deletedEvent,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_AddedEventState value) addedEvent,
    required TResult Function(_PublishedEventState value) publishedEvent,
    required TResult Function(_UpdatedEventState value) updatedEvent,
    required TResult Function(_AddedTicketState value) addedTicket,
    required TResult Function(_DeletedEventState value) deletedEvent,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_AddedEventState value)? addedEvent,
    TResult? Function(_PublishedEventState value)? publishedEvent,
    TResult? Function(_UpdatedEventState value)? updatedEvent,
    TResult? Function(_AddedTicketState value)? addedTicket,
    TResult? Function(_DeletedEventState value)? deletedEvent,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_AddedEventState value)? addedEvent,
    TResult Function(_PublishedEventState value)? publishedEvent,
    TResult Function(_UpdatedEventState value)? updatedEvent,
    TResult Function(_AddedTicketState value)? addedTicket,
    TResult Function(_DeletedEventState value)? deletedEvent,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends UserEventsState {
  const factory _ErrorState({required final Failure failure}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
