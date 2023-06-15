// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) loadDetails,
    required TResult Function(JoinRequest joinRequest) sendJoinRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? loadDetails,
    TResult? Function(JoinRequest joinRequest)? sendJoinRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? loadDetails,
    TResult Function(JoinRequest joinRequest)? sendJoinRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetailsEvent value) loadDetails,
    required TResult Function(_SendJoinRequestEvent value) sendJoinRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
    TResult? Function(_SendJoinRequestEvent value)? sendJoinRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    TResult Function(_SendJoinRequestEvent value)? sendJoinRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailsEventCopyWith<$Res> {
  factory $EventDetailsEventCopyWith(
          EventDetailsEvent value, $Res Function(EventDetailsEvent) then) =
      _$EventDetailsEventCopyWithImpl<$Res, EventDetailsEvent>;
}

/// @nodoc
class _$EventDetailsEventCopyWithImpl<$Res, $Val extends EventDetailsEvent>
    implements $EventDetailsEventCopyWith<$Res> {
  _$EventDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadDetailsEventCopyWith<$Res> {
  factory _$$_LoadDetailsEventCopyWith(
          _$_LoadDetailsEvent value, $Res Function(_$_LoadDetailsEvent) then) =
      __$$_LoadDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_LoadDetailsEventCopyWithImpl<$Res>
    extends _$EventDetailsEventCopyWithImpl<$Res, _$_LoadDetailsEvent>
    implements _$$_LoadDetailsEventCopyWith<$Res> {
  __$$_LoadDetailsEventCopyWithImpl(
      _$_LoadDetailsEvent _value, $Res Function(_$_LoadDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_LoadDetailsEvent(
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

class _$_LoadDetailsEvent implements _LoadDetailsEvent {
  const _$_LoadDetailsEvent({required this.event});

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailsEvent.loadDetails(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadDetailsEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadDetailsEventCopyWith<_$_LoadDetailsEvent> get copyWith =>
      __$$_LoadDetailsEventCopyWithImpl<_$_LoadDetailsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) loadDetails,
    required TResult Function(JoinRequest joinRequest) sendJoinRequest,
  }) {
    return loadDetails(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? loadDetails,
    TResult? Function(JoinRequest joinRequest)? sendJoinRequest,
  }) {
    return loadDetails?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? loadDetails,
    TResult Function(JoinRequest joinRequest)? sendJoinRequest,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetailsEvent value) loadDetails,
    required TResult Function(_SendJoinRequestEvent value) sendJoinRequest,
  }) {
    return loadDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
    TResult? Function(_SendJoinRequestEvent value)? sendJoinRequest,
  }) {
    return loadDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    TResult Function(_SendJoinRequestEvent value)? sendJoinRequest,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadDetailsEvent implements EventDetailsEvent {
  const factory _LoadDetailsEvent({required final Event event}) =
      _$_LoadDetailsEvent;

  Event get event;
  @JsonKey(ignore: true)
  _$$_LoadDetailsEventCopyWith<_$_LoadDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendJoinRequestEventCopyWith<$Res> {
  factory _$$_SendJoinRequestEventCopyWith(_$_SendJoinRequestEvent value,
          $Res Function(_$_SendJoinRequestEvent) then) =
      __$$_SendJoinRequestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({JoinRequest joinRequest});

  $JoinRequestCopyWith<$Res> get joinRequest;
}

/// @nodoc
class __$$_SendJoinRequestEventCopyWithImpl<$Res>
    extends _$EventDetailsEventCopyWithImpl<$Res, _$_SendJoinRequestEvent>
    implements _$$_SendJoinRequestEventCopyWith<$Res> {
  __$$_SendJoinRequestEventCopyWithImpl(_$_SendJoinRequestEvent _value,
      $Res Function(_$_SendJoinRequestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRequest = null,
  }) {
    return _then(_$_SendJoinRequestEvent(
      joinRequest: null == joinRequest
          ? _value.joinRequest
          : joinRequest // ignore: cast_nullable_to_non_nullable
              as JoinRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JoinRequestCopyWith<$Res> get joinRequest {
    return $JoinRequestCopyWith<$Res>(_value.joinRequest, (value) {
      return _then(_value.copyWith(joinRequest: value));
    });
  }
}

/// @nodoc

class _$_SendJoinRequestEvent implements _SendJoinRequestEvent {
  const _$_SendJoinRequestEvent({required this.joinRequest});

  @override
  final JoinRequest joinRequest;

  @override
  String toString() {
    return 'EventDetailsEvent.sendJoinRequest(joinRequest: $joinRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendJoinRequestEvent &&
            (identical(other.joinRequest, joinRequest) ||
                other.joinRequest == joinRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joinRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendJoinRequestEventCopyWith<_$_SendJoinRequestEvent> get copyWith =>
      __$$_SendJoinRequestEventCopyWithImpl<_$_SendJoinRequestEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) loadDetails,
    required TResult Function(JoinRequest joinRequest) sendJoinRequest,
  }) {
    return sendJoinRequest(joinRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? loadDetails,
    TResult? Function(JoinRequest joinRequest)? sendJoinRequest,
  }) {
    return sendJoinRequest?.call(joinRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? loadDetails,
    TResult Function(JoinRequest joinRequest)? sendJoinRequest,
    required TResult orElse(),
  }) {
    if (sendJoinRequest != null) {
      return sendJoinRequest(joinRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetailsEvent value) loadDetails,
    required TResult Function(_SendJoinRequestEvent value) sendJoinRequest,
  }) {
    return sendJoinRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
    TResult? Function(_SendJoinRequestEvent value)? sendJoinRequest,
  }) {
    return sendJoinRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    TResult Function(_SendJoinRequestEvent value)? sendJoinRequest,
    required TResult orElse(),
  }) {
    if (sendJoinRequest != null) {
      return sendJoinRequest(this);
    }
    return orElse();
  }
}

abstract class _SendJoinRequestEvent implements EventDetailsEvent {
  const factory _SendJoinRequestEvent(
      {required final JoinRequest joinRequest}) = _$_SendJoinRequestEvent;

  JoinRequest get joinRequest;
  @JsonKey(ignore: true)
  _$$_SendJoinRequestEventCopyWith<_$_SendJoinRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid, Event event) initial,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        sentRequest,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid, Event event)? initial,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid, Event event)? initial,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SentRequestState value) sentRequest,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SentRequestState value)? sentRequest,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SentRequestState value)? sentRequest,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailsStateCopyWith<$Res> {
  factory $EventDetailsStateCopyWith(
          EventDetailsState value, $Res Function(EventDetailsState) then) =
      _$EventDetailsStateCopyWithImpl<$Res, EventDetailsState>;
}

/// @nodoc
class _$EventDetailsStateCopyWithImpl<$Res, $Val extends EventDetailsState>
    implements $EventDetailsStateCopyWith<$Res> {
  _$EventDetailsStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String userUid, Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$EventDetailsStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? event = null,
  }) {
    return _then(_$_InitialState(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_InitialState extends _InitialState {
  const _$_InitialState({required this.userUid, required this.event})
      : super._();

  @override
  final String userUid;
  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailsState.initial(userUid: $userUid, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid, Event event) initial,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        sentRequest,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial(userUid, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid, Event event)? initial,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call(userUid, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid, Event event)? initial,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userUid, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SentRequestState value) sentRequest,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SentRequestState value)? sentRequest,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SentRequestState value)? sentRequest,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends EventDetailsState {
  const factory _InitialState(
      {required final String userUid,
      required final Event event}) = _$_InitialState;
  const _InitialState._() : super._();

  String get userUid;
  Event get event;
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SentRequestStateCopyWith<$Res> {
  factory _$$_SentRequestStateCopyWith(
          _$_SentRequestState value, $Res Function(_$_SentRequestState) then) =
      __$$_SentRequestStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userUid, EventDetailed event, UserToEventMetadata metadata});

  $UserToEventMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_SentRequestStateCopyWithImpl<$Res>
    extends _$EventDetailsStateCopyWithImpl<$Res, _$_SentRequestState>
    implements _$$_SentRequestStateCopyWith<$Res> {
  __$$_SentRequestStateCopyWithImpl(
      _$_SentRequestState _value, $Res Function(_$_SentRequestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? event = null,
    Object? metadata = null,
  }) {
    return _then(_$_SentRequestState(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventDetailed,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as UserToEventMetadata,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserToEventMetadataCopyWith<$Res> get metadata {
    return $UserToEventMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class _$_SentRequestState extends _SentRequestState {
  const _$_SentRequestState(
      {required this.userUid, required this.event, required this.metadata})
      : super._();

  @override
  final String userUid;
  @override
  final EventDetailed event;
  @override
  final UserToEventMetadata metadata;

  @override
  String toString() {
    return 'EventDetailsState.sentRequest(userUid: $userUid, event: $event, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentRequestState &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid, event, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentRequestStateCopyWith<_$_SentRequestState> get copyWith =>
      __$$_SentRequestStateCopyWithImpl<_$_SentRequestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid, Event event) initial,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        sentRequest,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return sentRequest(userUid, event, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid, Event event)? initial,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return sentRequest?.call(userUid, event, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid, Event event)? initial,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (sentRequest != null) {
      return sentRequest(userUid, event, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SentRequestState value) sentRequest,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return sentRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SentRequestState value)? sentRequest,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return sentRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SentRequestState value)? sentRequest,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (sentRequest != null) {
      return sentRequest(this);
    }
    return orElse();
  }
}

abstract class _SentRequestState extends EventDetailsState {
  const factory _SentRequestState(
      {required final String userUid,
      required final EventDetailed event,
      required final UserToEventMetadata metadata}) = _$_SentRequestState;
  const _SentRequestState._() : super._();

  String get userUid;
  EventDetailed get event;
  UserToEventMetadata get metadata;
  @JsonKey(ignore: true)
  _$$_SentRequestStateCopyWith<_$_SentRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userUid, EventDetailed event, UserToEventMetadata metadata});

  $UserToEventMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$EventDetailsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? event = null,
    Object? metadata = null,
  }) {
    return _then(_$_LoadedState(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventDetailed,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as UserToEventMetadata,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserToEventMetadataCopyWith<$Res> get metadata {
    return $UserToEventMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState(
      {required this.userUid, required this.event, required this.metadata})
      : super._();

  @override
  final String userUid;
  @override
  final EventDetailed event;
  @override
  final UserToEventMetadata metadata;

  @override
  String toString() {
    return 'EventDetailsState.loaded(userUid: $userUid, event: $event, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid, event, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid, Event event) initial,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        sentRequest,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(userUid, event, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid, Event event)? initial,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(userUid, event, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid, Event event)? initial,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userUid, event, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SentRequestState value) sentRequest,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SentRequestState value)? sentRequest,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SentRequestState value)? sentRequest,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends EventDetailsState {
  const factory _LoadedState(
      {required final String userUid,
      required final EventDetailed event,
      required final UserToEventMetadata metadata}) = _$_LoadedState;
  const _LoadedState._() : super._();

  String get userUid;
  EventDetailed get event;
  UserToEventMetadata get metadata;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
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
    extends _$EventDetailsStateCopyWithImpl<$Res, _$_ErrorState>
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
    return 'EventDetailsState.error(failure: $failure)';
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
    required TResult Function(String userUid, Event event) initial,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        sentRequest,
    required TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid, Event event)? initial,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult? Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid, Event event)? initial,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        sentRequest,
    TResult Function(
            String userUid, EventDetailed event, UserToEventMetadata metadata)?
        loaded,
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
    required TResult Function(_SentRequestState value) sentRequest,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_SentRequestState value)? sentRequest,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SentRequestState value)? sentRequest,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends EventDetailsState {
  const factory _ErrorState({required final Failure failure}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
