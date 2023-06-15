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
    required TResult Function(Ticket ticket) addTicketToEvent,
    required TResult Function(Ticket ticket) removeTicket,
    required TResult Function(String eventUid) removeAllTickets,
    required TResult Function(Event event) loadDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? addTicketToEvent,
    TResult? Function(Ticket ticket)? removeTicket,
    TResult? Function(String eventUid)? removeAllTickets,
    TResult? Function(Event event)? loadDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? addTicketToEvent,
    TResult Function(Ticket ticket)? removeTicket,
    TResult Function(String eventUid)? removeAllTickets,
    TResult Function(Event event)? loadDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicketToEventEvent value) addTicketToEvent,
    required TResult Function(_RemoveTicketEvent value) removeTicket,
    required TResult Function(_RemoveAllTicketsEvent value) removeAllTickets,
    required TResult Function(_LoadDetailsEvent value) loadDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult? Function(_RemoveTicketEvent value)? removeTicket,
    TResult? Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult Function(_RemoveTicketEvent value)? removeTicket,
    TResult Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult Function(_LoadDetailsEvent value)? loadDetails,
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
abstract class _$$_AddTicketToEventEventCopyWith<$Res> {
  factory _$$_AddTicketToEventEventCopyWith(_$_AddTicketToEventEvent value,
          $Res Function(_$_AddTicketToEventEvent) then) =
      __$$_AddTicketToEventEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_AddTicketToEventEventCopyWithImpl<$Res>
    extends _$EventDetailsEventCopyWithImpl<$Res, _$_AddTicketToEventEvent>
    implements _$$_AddTicketToEventEventCopyWith<$Res> {
  __$$_AddTicketToEventEventCopyWithImpl(_$_AddTicketToEventEvent _value,
      $Res Function(_$_AddTicketToEventEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_AddTicketToEventEvent(
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

class _$_AddTicketToEventEvent implements _AddTicketToEventEvent {
  const _$_AddTicketToEventEvent({required this.ticket});

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'EventDetailsEvent.addTicketToEvent(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTicketToEventEvent &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTicketToEventEventCopyWith<_$_AddTicketToEventEvent> get copyWith =>
      __$$_AddTicketToEventEventCopyWithImpl<_$_AddTicketToEventEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) addTicketToEvent,
    required TResult Function(Ticket ticket) removeTicket,
    required TResult Function(String eventUid) removeAllTickets,
    required TResult Function(Event event) loadDetails,
  }) {
    return addTicketToEvent(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? addTicketToEvent,
    TResult? Function(Ticket ticket)? removeTicket,
    TResult? Function(String eventUid)? removeAllTickets,
    TResult? Function(Event event)? loadDetails,
  }) {
    return addTicketToEvent?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? addTicketToEvent,
    TResult Function(Ticket ticket)? removeTicket,
    TResult Function(String eventUid)? removeAllTickets,
    TResult Function(Event event)? loadDetails,
    required TResult orElse(),
  }) {
    if (addTicketToEvent != null) {
      return addTicketToEvent(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicketToEventEvent value) addTicketToEvent,
    required TResult Function(_RemoveTicketEvent value) removeTicket,
    required TResult Function(_RemoveAllTicketsEvent value) removeAllTickets,
    required TResult Function(_LoadDetailsEvent value) loadDetails,
  }) {
    return addTicketToEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult? Function(_RemoveTicketEvent value)? removeTicket,
    TResult? Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
  }) {
    return addTicketToEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult Function(_RemoveTicketEvent value)? removeTicket,
    TResult Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    required TResult orElse(),
  }) {
    if (addTicketToEvent != null) {
      return addTicketToEvent(this);
    }
    return orElse();
  }
}

abstract class _AddTicketToEventEvent implements EventDetailsEvent {
  const factory _AddTicketToEventEvent({required final Ticket ticket}) =
      _$_AddTicketToEventEvent;

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_AddTicketToEventEventCopyWith<_$_AddTicketToEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveTicketEventCopyWith<$Res> {
  factory _$$_RemoveTicketEventCopyWith(_$_RemoveTicketEvent value,
          $Res Function(_$_RemoveTicketEvent) then) =
      __$$_RemoveTicketEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_RemoveTicketEventCopyWithImpl<$Res>
    extends _$EventDetailsEventCopyWithImpl<$Res, _$_RemoveTicketEvent>
    implements _$$_RemoveTicketEventCopyWith<$Res> {
  __$$_RemoveTicketEventCopyWithImpl(
      _$_RemoveTicketEvent _value, $Res Function(_$_RemoveTicketEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_RemoveTicketEvent(
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

class _$_RemoveTicketEvent implements _RemoveTicketEvent {
  const _$_RemoveTicketEvent({required this.ticket});

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'EventDetailsEvent.removeTicket(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveTicketEvent &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveTicketEventCopyWith<_$_RemoveTicketEvent> get copyWith =>
      __$$_RemoveTicketEventCopyWithImpl<_$_RemoveTicketEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) addTicketToEvent,
    required TResult Function(Ticket ticket) removeTicket,
    required TResult Function(String eventUid) removeAllTickets,
    required TResult Function(Event event) loadDetails,
  }) {
    return removeTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? addTicketToEvent,
    TResult? Function(Ticket ticket)? removeTicket,
    TResult? Function(String eventUid)? removeAllTickets,
    TResult? Function(Event event)? loadDetails,
  }) {
    return removeTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? addTicketToEvent,
    TResult Function(Ticket ticket)? removeTicket,
    TResult Function(String eventUid)? removeAllTickets,
    TResult Function(Event event)? loadDetails,
    required TResult orElse(),
  }) {
    if (removeTicket != null) {
      return removeTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicketToEventEvent value) addTicketToEvent,
    required TResult Function(_RemoveTicketEvent value) removeTicket,
    required TResult Function(_RemoveAllTicketsEvent value) removeAllTickets,
    required TResult Function(_LoadDetailsEvent value) loadDetails,
  }) {
    return removeTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult? Function(_RemoveTicketEvent value)? removeTicket,
    TResult? Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
  }) {
    return removeTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult Function(_RemoveTicketEvent value)? removeTicket,
    TResult Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    required TResult orElse(),
  }) {
    if (removeTicket != null) {
      return removeTicket(this);
    }
    return orElse();
  }
}

abstract class _RemoveTicketEvent implements EventDetailsEvent {
  const factory _RemoveTicketEvent({required final Ticket ticket}) =
      _$_RemoveTicketEvent;

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_RemoveTicketEventCopyWith<_$_RemoveTicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAllTicketsEventCopyWith<$Res> {
  factory _$$_RemoveAllTicketsEventCopyWith(_$_RemoveAllTicketsEvent value,
          $Res Function(_$_RemoveAllTicketsEvent) then) =
      __$$_RemoveAllTicketsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventUid});
}

/// @nodoc
class __$$_RemoveAllTicketsEventCopyWithImpl<$Res>
    extends _$EventDetailsEventCopyWithImpl<$Res, _$_RemoveAllTicketsEvent>
    implements _$$_RemoveAllTicketsEventCopyWith<$Res> {
  __$$_RemoveAllTicketsEventCopyWithImpl(_$_RemoveAllTicketsEvent _value,
      $Res Function(_$_RemoveAllTicketsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventUid = null,
  }) {
    return _then(_$_RemoveAllTicketsEvent(
      eventUid: null == eventUid
          ? _value.eventUid
          : eventUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveAllTicketsEvent implements _RemoveAllTicketsEvent {
  const _$_RemoveAllTicketsEvent({required this.eventUid});

  @override
  final String eventUid;

  @override
  String toString() {
    return 'EventDetailsEvent.removeAllTickets(eventUid: $eventUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveAllTicketsEvent &&
            (identical(other.eventUid, eventUid) ||
                other.eventUid == eventUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveAllTicketsEventCopyWith<_$_RemoveAllTicketsEvent> get copyWith =>
      __$$_RemoveAllTicketsEventCopyWithImpl<_$_RemoveAllTicketsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) addTicketToEvent,
    required TResult Function(Ticket ticket) removeTicket,
    required TResult Function(String eventUid) removeAllTickets,
    required TResult Function(Event event) loadDetails,
  }) {
    return removeAllTickets(eventUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? addTicketToEvent,
    TResult? Function(Ticket ticket)? removeTicket,
    TResult? Function(String eventUid)? removeAllTickets,
    TResult? Function(Event event)? loadDetails,
  }) {
    return removeAllTickets?.call(eventUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? addTicketToEvent,
    TResult Function(Ticket ticket)? removeTicket,
    TResult Function(String eventUid)? removeAllTickets,
    TResult Function(Event event)? loadDetails,
    required TResult orElse(),
  }) {
    if (removeAllTickets != null) {
      return removeAllTickets(eventUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicketToEventEvent value) addTicketToEvent,
    required TResult Function(_RemoveTicketEvent value) removeTicket,
    required TResult Function(_RemoveAllTicketsEvent value) removeAllTickets,
    required TResult Function(_LoadDetailsEvent value) loadDetails,
  }) {
    return removeAllTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult? Function(_RemoveTicketEvent value)? removeTicket,
    TResult? Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
  }) {
    return removeAllTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult Function(_RemoveTicketEvent value)? removeTicket,
    TResult Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult Function(_LoadDetailsEvent value)? loadDetails,
    required TResult orElse(),
  }) {
    if (removeAllTickets != null) {
      return removeAllTickets(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllTicketsEvent implements EventDetailsEvent {
  const factory _RemoveAllTicketsEvent({required final String eventUid}) =
      _$_RemoveAllTicketsEvent;

  String get eventUid;
  @JsonKey(ignore: true)
  _$$_RemoveAllTicketsEventCopyWith<_$_RemoveAllTicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Ticket ticket) addTicketToEvent,
    required TResult Function(Ticket ticket) removeTicket,
    required TResult Function(String eventUid) removeAllTickets,
    required TResult Function(Event event) loadDetails,
  }) {
    return loadDetails(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? addTicketToEvent,
    TResult? Function(Ticket ticket)? removeTicket,
    TResult? Function(String eventUid)? removeAllTickets,
    TResult? Function(Event event)? loadDetails,
  }) {
    return loadDetails?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? addTicketToEvent,
    TResult Function(Ticket ticket)? removeTicket,
    TResult Function(String eventUid)? removeAllTickets,
    TResult Function(Event event)? loadDetails,
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
    required TResult Function(_AddTicketToEventEvent value) addTicketToEvent,
    required TResult Function(_RemoveTicketEvent value) removeTicket,
    required TResult Function(_RemoveAllTicketsEvent value) removeAllTickets,
    required TResult Function(_LoadDetailsEvent value) loadDetails,
  }) {
    return loadDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult? Function(_RemoveTicketEvent value)? removeTicket,
    TResult? Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult? Function(_LoadDetailsEvent value)? loadDetails,
  }) {
    return loadDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicketToEventEvent value)? addTicketToEvent,
    TResult Function(_RemoveTicketEvent value)? removeTicket,
    TResult Function(_RemoveAllTicketsEvent value)? removeAllTickets,
    TResult Function(_LoadDetailsEvent value)? loadDetails,
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
mixin _$EventDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) initial,
    required TResult Function(EventDetailed event) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? initial,
    TResult? Function(EventDetailed event)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? initial,
    TResult Function(EventDetailed event)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
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
  $Res call({Event event});

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
    Object? event = null,
  }) {
    return _then(_$_InitialState(
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
  const _$_InitialState({required this.event}) : super._();

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailsState.initial(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) initial,
    required TResult Function(EventDetailed event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? initial,
    TResult? Function(EventDetailed event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? initial,
    TResult Function(EventDetailed event)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
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
  const factory _InitialState({required final Event event}) = _$_InitialState;
  const _InitialState._() : super._();

  Event get event;
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({EventDetailed event});
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
    Object? event = null,
  }) {
    return _then(_$_LoadedState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventDetailed,
    ));
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState({required this.event}) : super._();

  @override
  final EventDetailed event;

  @override
  String toString() {
    return 'EventDetailsState.loaded(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) initial,
    required TResult Function(EventDetailed event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? initial,
    TResult? Function(EventDetailed event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? initial,
    TResult Function(EventDetailed event)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
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
  const factory _LoadedState({required final EventDetailed event}) =
      _$_LoadedState;
  const _LoadedState._() : super._();

  EventDetailed get event;
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
    required TResult Function(Event event) initial,
    required TResult Function(EventDetailed event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? initial,
    TResult? Function(EventDetailed event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? initial,
    TResult Function(EventDetailed event)? loaded,
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
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
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
