// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_requests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinRequestsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchJoinRequests,
    required TResult Function(String requestUid) acceptRequest,
    required TResult Function(String requestUid) denyRequest,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchJoinRequests,
    TResult? Function(String requestUid)? acceptRequest,
    TResult? Function(String requestUid)? denyRequest,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchJoinRequests,
    TResult Function(String requestUid)? acceptRequest,
    TResult Function(String requestUid)? denyRequest,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJoinRequestsEvent value) fetchJoinRequests,
    required TResult Function(_AcceptRequestEvent value) acceptRequest,
    required TResult Function(_DenyRequestEvent value) denyRequest,
    required TResult Function(_ResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult? Function(_AcceptRequestEvent value)? acceptRequest,
    TResult? Function(_DenyRequestEvent value)? denyRequest,
    TResult? Function(_ResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult Function(_AcceptRequestEvent value)? acceptRequest,
    TResult Function(_DenyRequestEvent value)? denyRequest,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestsEventCopyWith<$Res> {
  factory $JoinRequestsEventCopyWith(
          JoinRequestsEvent value, $Res Function(JoinRequestsEvent) then) =
      _$JoinRequestsEventCopyWithImpl<$Res, JoinRequestsEvent>;
}

/// @nodoc
class _$JoinRequestsEventCopyWithImpl<$Res, $Val extends JoinRequestsEvent>
    implements $JoinRequestsEventCopyWith<$Res> {
  _$JoinRequestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchJoinRequestsEventCopyWith<$Res> {
  factory _$$_FetchJoinRequestsEventCopyWith(_$_FetchJoinRequestsEvent value,
          $Res Function(_$_FetchJoinRequestsEvent) then) =
      __$$_FetchJoinRequestsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_FetchJoinRequestsEventCopyWithImpl<$Res>
    extends _$JoinRequestsEventCopyWithImpl<$Res, _$_FetchJoinRequestsEvent>
    implements _$$_FetchJoinRequestsEventCopyWith<$Res> {
  __$$_FetchJoinRequestsEventCopyWithImpl(_$_FetchJoinRequestsEvent _value,
      $Res Function(_$_FetchJoinRequestsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_FetchJoinRequestsEvent(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchJoinRequestsEvent implements _FetchJoinRequestsEvent {
  const _$_FetchJoinRequestsEvent({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'JoinRequestsEvent.fetchJoinRequests(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchJoinRequestsEvent &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchJoinRequestsEventCopyWith<_$_FetchJoinRequestsEvent> get copyWith =>
      __$$_FetchJoinRequestsEventCopyWithImpl<_$_FetchJoinRequestsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchJoinRequests,
    required TResult Function(String requestUid) acceptRequest,
    required TResult Function(String requestUid) denyRequest,
    required TResult Function() reset,
  }) {
    return fetchJoinRequests(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchJoinRequests,
    TResult? Function(String requestUid)? acceptRequest,
    TResult? Function(String requestUid)? denyRequest,
    TResult? Function()? reset,
  }) {
    return fetchJoinRequests?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchJoinRequests,
    TResult Function(String requestUid)? acceptRequest,
    TResult Function(String requestUid)? denyRequest,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchJoinRequests != null) {
      return fetchJoinRequests(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJoinRequestsEvent value) fetchJoinRequests,
    required TResult Function(_AcceptRequestEvent value) acceptRequest,
    required TResult Function(_DenyRequestEvent value) denyRequest,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return fetchJoinRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult? Function(_AcceptRequestEvent value)? acceptRequest,
    TResult? Function(_DenyRequestEvent value)? denyRequest,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return fetchJoinRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult Function(_AcceptRequestEvent value)? acceptRequest,
    TResult Function(_DenyRequestEvent value)? denyRequest,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (fetchJoinRequests != null) {
      return fetchJoinRequests(this);
    }
    return orElse();
  }
}

abstract class _FetchJoinRequestsEvent implements JoinRequestsEvent {
  const factory _FetchJoinRequestsEvent({required final String userUid}) =
      _$_FetchJoinRequestsEvent;

  String get userUid;
  @JsonKey(ignore: true)
  _$$_FetchJoinRequestsEventCopyWith<_$_FetchJoinRequestsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptRequestEventCopyWith<$Res> {
  factory _$$_AcceptRequestEventCopyWith(_$_AcceptRequestEvent value,
          $Res Function(_$_AcceptRequestEvent) then) =
      __$$_AcceptRequestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestUid});
}

/// @nodoc
class __$$_AcceptRequestEventCopyWithImpl<$Res>
    extends _$JoinRequestsEventCopyWithImpl<$Res, _$_AcceptRequestEvent>
    implements _$$_AcceptRequestEventCopyWith<$Res> {
  __$$_AcceptRequestEventCopyWithImpl(
      _$_AcceptRequestEvent _value, $Res Function(_$_AcceptRequestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUid = null,
  }) {
    return _then(_$_AcceptRequestEvent(
      requestUid: null == requestUid
          ? _value.requestUid
          : requestUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AcceptRequestEvent implements _AcceptRequestEvent {
  const _$_AcceptRequestEvent({required this.requestUid});

  @override
  final String requestUid;

  @override
  String toString() {
    return 'JoinRequestsEvent.acceptRequest(requestUid: $requestUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptRequestEvent &&
            (identical(other.requestUid, requestUid) ||
                other.requestUid == requestUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptRequestEventCopyWith<_$_AcceptRequestEvent> get copyWith =>
      __$$_AcceptRequestEventCopyWithImpl<_$_AcceptRequestEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchJoinRequests,
    required TResult Function(String requestUid) acceptRequest,
    required TResult Function(String requestUid) denyRequest,
    required TResult Function() reset,
  }) {
    return acceptRequest(requestUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchJoinRequests,
    TResult? Function(String requestUid)? acceptRequest,
    TResult? Function(String requestUid)? denyRequest,
    TResult? Function()? reset,
  }) {
    return acceptRequest?.call(requestUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchJoinRequests,
    TResult Function(String requestUid)? acceptRequest,
    TResult Function(String requestUid)? denyRequest,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(requestUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJoinRequestsEvent value) fetchJoinRequests,
    required TResult Function(_AcceptRequestEvent value) acceptRequest,
    required TResult Function(_DenyRequestEvent value) denyRequest,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return acceptRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult? Function(_AcceptRequestEvent value)? acceptRequest,
    TResult? Function(_DenyRequestEvent value)? denyRequest,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return acceptRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult Function(_AcceptRequestEvent value)? acceptRequest,
    TResult Function(_DenyRequestEvent value)? denyRequest,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(this);
    }
    return orElse();
  }
}

abstract class _AcceptRequestEvent implements JoinRequestsEvent {
  const factory _AcceptRequestEvent({required final String requestUid}) =
      _$_AcceptRequestEvent;

  String get requestUid;
  @JsonKey(ignore: true)
  _$$_AcceptRequestEventCopyWith<_$_AcceptRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DenyRequestEventCopyWith<$Res> {
  factory _$$_DenyRequestEventCopyWith(
          _$_DenyRequestEvent value, $Res Function(_$_DenyRequestEvent) then) =
      __$$_DenyRequestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestUid});
}

/// @nodoc
class __$$_DenyRequestEventCopyWithImpl<$Res>
    extends _$JoinRequestsEventCopyWithImpl<$Res, _$_DenyRequestEvent>
    implements _$$_DenyRequestEventCopyWith<$Res> {
  __$$_DenyRequestEventCopyWithImpl(
      _$_DenyRequestEvent _value, $Res Function(_$_DenyRequestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUid = null,
  }) {
    return _then(_$_DenyRequestEvent(
      requestUid: null == requestUid
          ? _value.requestUid
          : requestUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DenyRequestEvent implements _DenyRequestEvent {
  const _$_DenyRequestEvent({required this.requestUid});

  @override
  final String requestUid;

  @override
  String toString() {
    return 'JoinRequestsEvent.denyRequest(requestUid: $requestUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DenyRequestEvent &&
            (identical(other.requestUid, requestUid) ||
                other.requestUid == requestUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DenyRequestEventCopyWith<_$_DenyRequestEvent> get copyWith =>
      __$$_DenyRequestEventCopyWithImpl<_$_DenyRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchJoinRequests,
    required TResult Function(String requestUid) acceptRequest,
    required TResult Function(String requestUid) denyRequest,
    required TResult Function() reset,
  }) {
    return denyRequest(requestUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchJoinRequests,
    TResult? Function(String requestUid)? acceptRequest,
    TResult? Function(String requestUid)? denyRequest,
    TResult? Function()? reset,
  }) {
    return denyRequest?.call(requestUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchJoinRequests,
    TResult Function(String requestUid)? acceptRequest,
    TResult Function(String requestUid)? denyRequest,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(requestUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJoinRequestsEvent value) fetchJoinRequests,
    required TResult Function(_AcceptRequestEvent value) acceptRequest,
    required TResult Function(_DenyRequestEvent value) denyRequest,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return denyRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult? Function(_AcceptRequestEvent value)? acceptRequest,
    TResult? Function(_DenyRequestEvent value)? denyRequest,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return denyRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult Function(_AcceptRequestEvent value)? acceptRequest,
    TResult Function(_DenyRequestEvent value)? denyRequest,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(this);
    }
    return orElse();
  }
}

abstract class _DenyRequestEvent implements JoinRequestsEvent {
  const factory _DenyRequestEvent({required final String requestUid}) =
      _$_DenyRequestEvent;

  String get requestUid;
  @JsonKey(ignore: true)
  _$$_DenyRequestEventCopyWith<_$_DenyRequestEvent> get copyWith =>
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
    extends _$JoinRequestsEventCopyWithImpl<$Res, _$_ResetEvent>
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
    return 'JoinRequestsEvent.reset()';
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
    required TResult Function(String userUid) fetchJoinRequests,
    required TResult Function(String requestUid) acceptRequest,
    required TResult Function(String requestUid) denyRequest,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchJoinRequests,
    TResult? Function(String requestUid)? acceptRequest,
    TResult? Function(String requestUid)? denyRequest,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchJoinRequests,
    TResult Function(String requestUid)? acceptRequest,
    TResult Function(String requestUid)? denyRequest,
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
    required TResult Function(_FetchJoinRequestsEvent value) fetchJoinRequests,
    required TResult Function(_AcceptRequestEvent value) acceptRequest,
    required TResult Function(_DenyRequestEvent value) denyRequest,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult? Function(_AcceptRequestEvent value)? acceptRequest,
    TResult? Function(_DenyRequestEvent value)? denyRequest,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJoinRequestsEvent value)? fetchJoinRequests,
    TResult Function(_AcceptRequestEvent value)? acceptRequest,
    TResult Function(_DenyRequestEvent value)? denyRequest,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements JoinRequestsEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
mixin _$JoinRequestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loaded,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loading,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestsStateCopyWith<$Res> {
  factory $JoinRequestsStateCopyWith(
          JoinRequestsState value, $Res Function(JoinRequestsState) then) =
      _$JoinRequestsStateCopyWithImpl<$Res, JoinRequestsState>;
}

/// @nodoc
class _$JoinRequestsStateCopyWithImpl<$Res, $Val extends JoinRequestsState>
    implements $JoinRequestsStateCopyWith<$Res> {
  _$JoinRequestsStateCopyWithImpl(this._value, this._then);

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
    extends _$JoinRequestsStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'JoinRequestsState.initial()';
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
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loaded,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loading,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loading,
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
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends JoinRequestsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JoinRequest> joinRequests, String userUid});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$JoinRequestsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRequests = null,
    Object? userUid = null,
  }) {
    return _then(_$_LoadedState(
      joinRequests: null == joinRequests
          ? _value._joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState(
      {required final List<JoinRequest> joinRequests, required this.userUid})
      : _joinRequests = joinRequests,
        super._();

  final List<JoinRequest> _joinRequests;
  @override
  List<JoinRequest> get joinRequests {
    if (_joinRequests is EqualUnmodifiableListView) return _joinRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequests);
  }

  @override
  final String userUid;

  @override
  String toString() {
    return 'JoinRequestsState.loaded(joinRequests: $joinRequests, userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality()
                .equals(other._joinRequests, _joinRequests) &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_joinRequests), userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loaded,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loading,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(joinRequests, userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(joinRequests, userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(joinRequests, userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends JoinRequestsState {
  const factory _LoadedState(
      {required final List<JoinRequest> joinRequests,
      required final String userUid}) = _$_LoadedState;
  const _LoadedState._() : super._();

  List<JoinRequest> get joinRequests;
  String get userUid;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JoinRequest> joinRequests, String userUid});
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$JoinRequestsStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRequests = null,
    Object? userUid = null,
  }) {
    return _then(_$_LoadingState(
      joinRequests: null == joinRequests
          ? _value._joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadingState extends _LoadingState {
  const _$_LoadingState(
      {required final List<JoinRequest> joinRequests, required this.userUid})
      : _joinRequests = joinRequests,
        super._();

  final List<JoinRequest> _joinRequests;
  @override
  List<JoinRequest> get joinRequests {
    if (_joinRequests is EqualUnmodifiableListView) return _joinRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequests);
  }

  @override
  final String userUid;

  @override
  String toString() {
    return 'JoinRequestsState.loading(joinRequests: $joinRequests, userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            const DeepCollectionEquality()
                .equals(other._joinRequests, _joinRequests) &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_joinRequests), userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loaded,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loading,
    required TResult Function(Failure failure) error,
  }) {
    return loading(joinRequests, userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call(joinRequests, userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(joinRequests, userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends JoinRequestsState {
  const factory _LoadingState(
      {required final List<JoinRequest> joinRequests,
      required final String userUid}) = _$_LoadingState;
  const _LoadingState._() : super._();

  List<JoinRequest> get joinRequests;
  String get userUid;
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
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
    extends _$JoinRequestsStateCopyWithImpl<$Res, _$_ErrorState>
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
    return 'JoinRequestsState.error(failure: $failure)';
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
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loaded,
    required TResult Function(List<JoinRequest> joinRequests, String userUid)
        loading,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult? Function(List<JoinRequest> joinRequests, String userUid)? loading,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loaded,
    TResult Function(List<JoinRequest> joinRequests, String userUid)? loading,
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
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends JoinRequestsState {
  const factory _ErrorState({required final Failure failure}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
