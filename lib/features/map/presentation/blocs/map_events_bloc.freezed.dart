// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(Event? event) selectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(Event? event)? selectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(Event? event)? selectEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEventsEvent value) fetchEvents,
    required TResult Function(_SelectEventEvent value) selectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEventsEvent value)? fetchEvents,
    TResult? Function(_SelectEventEvent value)? selectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEventsEvent value)? fetchEvents,
    TResult Function(_SelectEventEvent value)? selectEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventsEventCopyWith<$Res> {
  factory $MapEventsEventCopyWith(
          MapEventsEvent value, $Res Function(MapEventsEvent) then) =
      _$MapEventsEventCopyWithImpl<$Res, MapEventsEvent>;
}

/// @nodoc
class _$MapEventsEventCopyWithImpl<$Res, $Val extends MapEventsEvent>
    implements $MapEventsEventCopyWith<$Res> {
  _$MapEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchEventsEventCopyWith<$Res> {
  factory _$$_FetchEventsEventCopyWith(
          _$_FetchEventsEvent value, $Res Function(_$_FetchEventsEvent) then) =
      __$$_FetchEventsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchEventsEventCopyWithImpl<$Res>
    extends _$MapEventsEventCopyWithImpl<$Res, _$_FetchEventsEvent>
    implements _$$_FetchEventsEventCopyWith<$Res> {
  __$$_FetchEventsEventCopyWithImpl(
      _$_FetchEventsEvent _value, $Res Function(_$_FetchEventsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchEventsEvent implements _FetchEventsEvent {
  const _$_FetchEventsEvent();

  @override
  String toString() {
    return 'MapEventsEvent.fetchEvents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchEventsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(Event? event) selectEvent,
  }) {
    return fetchEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(Event? event)? selectEvent,
  }) {
    return fetchEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(Event? event)? selectEvent,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEventsEvent value) fetchEvents,
    required TResult Function(_SelectEventEvent value) selectEvent,
  }) {
    return fetchEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEventsEvent value)? fetchEvents,
    TResult? Function(_SelectEventEvent value)? selectEvent,
  }) {
    return fetchEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEventsEvent value)? fetchEvents,
    TResult Function(_SelectEventEvent value)? selectEvent,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsEvent implements MapEventsEvent {
  const factory _FetchEventsEvent() = _$_FetchEventsEvent;
}

/// @nodoc
abstract class _$$_SelectEventEventCopyWith<$Res> {
  factory _$$_SelectEventEventCopyWith(
          _$_SelectEventEvent value, $Res Function(_$_SelectEventEvent) then) =
      __$$_SelectEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Event? event});

  $EventCopyWith<$Res>? get event;
}

/// @nodoc
class __$$_SelectEventEventCopyWithImpl<$Res>
    extends _$MapEventsEventCopyWithImpl<$Res, _$_SelectEventEvent>
    implements _$$_SelectEventEventCopyWith<$Res> {
  __$$_SelectEventEventCopyWithImpl(
      _$_SelectEventEvent _value, $Res Function(_$_SelectEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$_SelectEventEvent(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$_SelectEventEvent implements _SelectEventEvent {
  const _$_SelectEventEvent({required this.event});

  @override
  final Event? event;

  @override
  String toString() {
    return 'MapEventsEvent.selectEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectEventEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectEventEventCopyWith<_$_SelectEventEvent> get copyWith =>
      __$$_SelectEventEventCopyWithImpl<_$_SelectEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(Event? event) selectEvent,
  }) {
    return selectEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(Event? event)? selectEvent,
  }) {
    return selectEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(Event? event)? selectEvent,
    required TResult orElse(),
  }) {
    if (selectEvent != null) {
      return selectEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEventsEvent value) fetchEvents,
    required TResult Function(_SelectEventEvent value) selectEvent,
  }) {
    return selectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEventsEvent value)? fetchEvents,
    TResult? Function(_SelectEventEvent value)? selectEvent,
  }) {
    return selectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEventsEvent value)? fetchEvents,
    TResult Function(_SelectEventEvent value)? selectEvent,
    required TResult orElse(),
  }) {
    if (selectEvent != null) {
      return selectEvent(this);
    }
    return orElse();
  }
}

abstract class _SelectEventEvent implements MapEventsEvent {
  const factory _SelectEventEvent({required final Event? event}) =
      _$_SelectEventEvent;

  Event? get event;
  @JsonKey(ignore: true)
  _$$_SelectEventEventCopyWith<_$_SelectEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> events, Event? selectedEvent) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Event> events, Event? selectedEvent)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> events, Event? selectedEvent)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventsStateCopyWith<$Res> {
  factory $MapEventsStateCopyWith(
          MapEventsState value, $Res Function(MapEventsState) then) =
      _$MapEventsStateCopyWithImpl<$Res, MapEventsState>;
}

/// @nodoc
class _$MapEventsStateCopyWithImpl<$Res, $Val extends MapEventsState>
    implements $MapEventsStateCopyWith<$Res> {
  _$MapEventsStateCopyWithImpl(this._value, this._then);

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
    extends _$MapEventsStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'MapEventsState.initial()';
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
    required TResult Function(List<Event> events, Event? selectedEvent) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Event> events, Event? selectedEvent)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> events, Event? selectedEvent)? loaded,
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
    required TResult Function(_LoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends MapEventsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events, Event? selectedEvent});

  $EventCopyWith<$Res>? get selectedEvent;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$MapEventsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? selectedEvent = freezed,
  }) {
    return _then(_$_LoadedState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      selectedEvent: freezed == selectedEvent
          ? _value.selectedEvent
          : selectedEvent // ignore: cast_nullable_to_non_nullable
              as Event?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res>? get selectedEvent {
    if (_value.selectedEvent == null) {
      return null;
    }

    return $EventCopyWith<$Res>(_value.selectedEvent!, (value) {
      return _then(_value.copyWith(selectedEvent: value));
    });
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required final List<Event> events, this.selectedEvent})
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
  final Event? selectedEvent;

  @override
  String toString() {
    return 'MapEventsState.loaded(events: $events, selectedEvent: $selectedEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.selectedEvent, selectedEvent) ||
                other.selectedEvent == selectedEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_events), selectedEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Event> events, Event? selectedEvent) loaded,
  }) {
    return loaded(events, selectedEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Event> events, Event? selectedEvent)? loaded,
  }) {
    return loaded?.call(events, selectedEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Event> events, Event? selectedEvent)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events, selectedEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends MapEventsState {
  const factory _LoadedState(
      {required final List<Event> events,
      final Event? selectedEvent}) = _$_LoadedState;
  const _LoadedState._() : super._();

  List<Event> get events;
  Event? get selectedEvent;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
