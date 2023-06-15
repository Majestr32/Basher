// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_initialization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileInitializationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInitializationEventCopyWith<$Res> {
  factory $ProfileInitializationEventCopyWith(ProfileInitializationEvent value,
          $Res Function(ProfileInitializationEvent) then) =
      _$ProfileInitializationEventCopyWithImpl<$Res,
          ProfileInitializationEvent>;
}

/// @nodoc
class _$ProfileInitializationEventCopyWithImpl<$Res,
        $Val extends ProfileInitializationEvent>
    implements $ProfileInitializationEventCopyWith<$Res> {
  _$ProfileInitializationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchUserRegistrationEventCopyWith<$Res> {
  factory _$$_FetchUserRegistrationEventCopyWith(
          _$_FetchUserRegistrationEvent value,
          $Res Function(_$_FetchUserRegistrationEvent) then) =
      __$$_FetchUserRegistrationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$_FetchUserRegistrationEventCopyWithImpl<$Res>
    extends _$ProfileInitializationEventCopyWithImpl<$Res,
        _$_FetchUserRegistrationEvent>
    implements _$$_FetchUserRegistrationEventCopyWith<$Res> {
  __$$_FetchUserRegistrationEventCopyWithImpl(
      _$_FetchUserRegistrationEvent _value,
      $Res Function(_$_FetchUserRegistrationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$_FetchUserRegistrationEvent(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchUserRegistrationEvent implements _FetchUserRegistrationEvent {
  const _$_FetchUserRegistrationEvent({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'ProfileInitializationEvent.fetchUserRegistration(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserRegistrationEvent &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserRegistrationEventCopyWith<_$_FetchUserRegistrationEvent>
      get copyWith => __$$_FetchUserRegistrationEventCopyWithImpl<
          _$_FetchUserRegistrationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) {
    return fetchUserRegistration(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) {
    return fetchUserRegistration?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) {
    if (fetchUserRegistration != null) {
      return fetchUserRegistration(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) {
    return fetchUserRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) {
    return fetchUserRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) {
    if (fetchUserRegistration != null) {
      return fetchUserRegistration(this);
    }
    return orElse();
  }
}

abstract class _FetchUserRegistrationEvent
    implements ProfileInitializationEvent {
  const factory _FetchUserRegistrationEvent({required final String uid}) =
      _$_FetchUserRegistrationEvent;

  String get uid;
  @JsonKey(ignore: true)
  _$$_FetchUserRegistrationEventCopyWith<_$_FetchUserRegistrationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterUserEventCopyWith<$Res> {
  factory _$$_RegisterUserEventCopyWith(_$_RegisterUserEvent value,
          $Res Function(_$_RegisterUserEvent) then) =
      __$$_RegisterUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_RegisterUserEventCopyWithImpl<$Res>
    extends _$ProfileInitializationEventCopyWithImpl<$Res, _$_RegisterUserEvent>
    implements _$$_RegisterUserEventCopyWith<$Res> {
  __$$_RegisterUserEventCopyWithImpl(
      _$_RegisterUserEvent _value, $Res Function(_$_RegisterUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_RegisterUserEvent(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_RegisterUserEvent implements _RegisterUserEvent {
  const _$_RegisterUserEvent({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileInitializationEvent.registerUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterUserEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterUserEventCopyWith<_$_RegisterUserEvent> get copyWith =>
      __$$_RegisterUserEventCopyWithImpl<_$_RegisterUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) {
    return registerUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) {
    return registerUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserEvent implements ProfileInitializationEvent {
  const factory _RegisterUserEvent({required final User user}) =
      _$_RegisterUserEvent;

  User get user;
  @JsonKey(ignore: true)
  _$$_RegisterUserEventCopyWith<_$_RegisterUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetUserModeEventCopyWith<$Res> {
  factory _$$_SetUserModeEventCopyWith(
          _$_SetUserModeEvent value, $Res Function(_$_SetUserModeEvent) then) =
      __$$_SetUserModeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, Role role});
}

/// @nodoc
class __$$_SetUserModeEventCopyWithImpl<$Res>
    extends _$ProfileInitializationEventCopyWithImpl<$Res, _$_SetUserModeEvent>
    implements _$$_SetUserModeEventCopyWith<$Res> {
  __$$_SetUserModeEventCopyWithImpl(
      _$_SetUserModeEvent _value, $Res Function(_$_SetUserModeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? role = null,
  }) {
    return _then(_$_SetUserModeEvent(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _$_SetUserModeEvent implements _SetUserModeEvent {
  const _$_SetUserModeEvent({required this.uid, required this.role});

  @override
  final String uid;
  @override
  final Role role;

  @override
  String toString() {
    return 'ProfileInitializationEvent.setUserMode(uid: $uid, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetUserModeEvent &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetUserModeEventCopyWith<_$_SetUserModeEvent> get copyWith =>
      __$$_SetUserModeEventCopyWithImpl<_$_SetUserModeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) {
    return setUserMode(uid, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) {
    return setUserMode?.call(uid, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) {
    if (setUserMode != null) {
      return setUserMode(uid, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) {
    return setUserMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) {
    return setUserMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) {
    if (setUserMode != null) {
      return setUserMode(this);
    }
    return orElse();
  }
}

abstract class _SetUserModeEvent implements ProfileInitializationEvent {
  const factory _SetUserModeEvent(
      {required final String uid,
      required final Role role}) = _$_SetUserModeEvent;

  String get uid;
  Role get role;
  @JsonKey(ignore: true)
  _$$_SetUserModeEventCopyWith<_$_SetUserModeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserEventCopyWith<$Res> {
  factory _$$_EditUserEventCopyWith(
          _$_EditUserEvent value, $Res Function(_$_EditUserEvent) then) =
      __$$_EditUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String? imgToUpdate});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_EditUserEventCopyWithImpl<$Res>
    extends _$ProfileInitializationEventCopyWithImpl<$Res, _$_EditUserEvent>
    implements _$$_EditUserEventCopyWith<$Res> {
  __$$_EditUserEventCopyWithImpl(
      _$_EditUserEvent _value, $Res Function(_$_EditUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? imgToUpdate = freezed,
  }) {
    return _then(_$_EditUserEvent(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      imgToUpdate: freezed == imgToUpdate
          ? _value.imgToUpdate
          : imgToUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_EditUserEvent implements _EditUserEvent {
  const _$_EditUserEvent({required this.user, required this.imgToUpdate});

  @override
  final User user;
  @override
  final String? imgToUpdate;

  @override
  String toString() {
    return 'ProfileInitializationEvent.editUser(user: $user, imgToUpdate: $imgToUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.imgToUpdate, imgToUpdate) ||
                other.imgToUpdate == imgToUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, imgToUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserEventCopyWith<_$_EditUserEvent> get copyWith =>
      __$$_EditUserEventCopyWithImpl<_$_EditUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) {
    return editUser(user, imgToUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) {
    return editUser?.call(user, imgToUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(user, imgToUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class _EditUserEvent implements ProfileInitializationEvent {
  const factory _EditUserEvent(
      {required final User user,
      required final String? imgToUpdate}) = _$_EditUserEvent;

  User get user;
  String? get imgToUpdate;
  @JsonKey(ignore: true)
  _$$_EditUserEventCopyWith<_$_EditUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetUserEventCopyWith<$Res> {
  factory _$$_ResetUserEventCopyWith(
          _$_ResetUserEvent value, $Res Function(_$_ResetUserEvent) then) =
      __$$_ResetUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetUserEventCopyWithImpl<$Res>
    extends _$ProfileInitializationEventCopyWithImpl<$Res, _$_ResetUserEvent>
    implements _$$_ResetUserEventCopyWith<$Res> {
  __$$_ResetUserEventCopyWithImpl(
      _$_ResetUserEvent _value, $Res Function(_$_ResetUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetUserEvent implements _ResetUserEvent {
  const _$_ResetUserEvent();

  @override
  String toString() {
    return 'ProfileInitializationEvent.resetUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchUserRegistration,
    required TResult Function(User user) registerUser,
    required TResult Function(String uid, Role role) setUserMode,
    required TResult Function(User user, String? imgToUpdate) editUser,
    required TResult Function() resetUser,
  }) {
    return resetUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchUserRegistration,
    TResult? Function(User user)? registerUser,
    TResult? Function(String uid, Role role)? setUserMode,
    TResult? Function(User user, String? imgToUpdate)? editUser,
    TResult? Function()? resetUser,
  }) {
    return resetUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchUserRegistration,
    TResult Function(User user)? registerUser,
    TResult Function(String uid, Role role)? setUserMode,
    TResult Function(User user, String? imgToUpdate)? editUser,
    TResult Function()? resetUser,
    required TResult orElse(),
  }) {
    if (resetUser != null) {
      return resetUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserRegistrationEvent value)
        fetchUserRegistration,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SetUserModeEvent value) setUserMode,
    required TResult Function(_EditUserEvent value) editUser,
    required TResult Function(_ResetUserEvent value) resetUser,
  }) {
    return resetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SetUserModeEvent value)? setUserMode,
    TResult? Function(_EditUserEvent value)? editUser,
    TResult? Function(_ResetUserEvent value)? resetUser,
  }) {
    return resetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserRegistrationEvent value)? fetchUserRegistration,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SetUserModeEvent value)? setUserMode,
    TResult Function(_EditUserEvent value)? editUser,
    TResult Function(_ResetUserEvent value)? resetUser,
    required TResult orElse(),
  }) {
    if (resetUser != null) {
      return resetUser(this);
    }
    return orElse();
  }
}

abstract class _ResetUserEvent implements ProfileInitializationEvent {
  const factory _ResetUserEvent() = _$_ResetUserEvent;
}

/// @nodoc
mixin _$ProfileInitializationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInitializationStateCopyWith<$Res> {
  factory $ProfileInitializationStateCopyWith(ProfileInitializationState value,
          $Res Function(ProfileInitializationState) then) =
      _$ProfileInitializationStateCopyWithImpl<$Res,
          ProfileInitializationState>;
}

/// @nodoc
class _$ProfileInitializationStateCopyWithImpl<$Res,
        $Val extends ProfileInitializationState>
    implements $ProfileInitializationStateCopyWith<$Res> {
  _$ProfileInitializationStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileInitializationStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ProfileInitializationState.initial()';
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
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
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
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends ProfileInitializationState {
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
    extends _$ProfileInitializationStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'ProfileInitializationState.loading()';
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
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
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
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends ProfileInitializationState {
  const factory _LoadingState() = _$_LoadingState;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$_InitializedStateCopyWith<$Res> {
  factory _$$_InitializedStateCopyWith(
          _$_InitializedState value, $Res Function(_$_InitializedState) then) =
      __$$_InitializedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_InitializedStateCopyWithImpl<$Res>
    extends _$ProfileInitializationStateCopyWithImpl<$Res, _$_InitializedState>
    implements _$$_InitializedStateCopyWith<$Res> {
  __$$_InitializedStateCopyWithImpl(
      _$_InitializedState _value, $Res Function(_$_InitializedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_InitializedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_InitializedState extends _InitializedState {
  const _$_InitializedState({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileInitializationState.initialized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedStateCopyWith<_$_InitializedState> get copyWith =>
      __$$_InitializedStateCopyWithImpl<_$_InitializedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return initialized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedState extends ProfileInitializationState {
  const factory _InitializedState({required final User user}) =
      _$_InitializedState;
  const _InitializedState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_InitializedStateCopyWith<_$_InitializedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditedProfileSuccessfullyStateCopyWith<$Res> {
  factory _$$_EditedProfileSuccessfullyStateCopyWith(
          _$_EditedProfileSuccessfullyState value,
          $Res Function(_$_EditedProfileSuccessfullyState) then) =
      __$$_EditedProfileSuccessfullyStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_EditedProfileSuccessfullyStateCopyWithImpl<$Res>
    extends _$ProfileInitializationStateCopyWithImpl<$Res,
        _$_EditedProfileSuccessfullyState>
    implements _$$_EditedProfileSuccessfullyStateCopyWith<$Res> {
  __$$_EditedProfileSuccessfullyStateCopyWithImpl(
      _$_EditedProfileSuccessfullyState _value,
      $Res Function(_$_EditedProfileSuccessfullyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_EditedProfileSuccessfullyState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_EditedProfileSuccessfullyState
    extends _EditedProfileSuccessfullyState {
  const _$_EditedProfileSuccessfullyState({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileInitializationState.editedProfileSuccessfully(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditedProfileSuccessfullyState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditedProfileSuccessfullyStateCopyWith<_$_EditedProfileSuccessfullyState>
      get copyWith => __$$_EditedProfileSuccessfullyStateCopyWithImpl<
          _$_EditedProfileSuccessfullyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return editedProfileSuccessfully(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return editedProfileSuccessfully?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (editedProfileSuccessfully != null) {
      return editedProfileSuccessfully(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return editedProfileSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return editedProfileSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (editedProfileSuccessfully != null) {
      return editedProfileSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _EditedProfileSuccessfullyState
    extends ProfileInitializationState {
  const factory _EditedProfileSuccessfullyState({required final User user}) =
      _$_EditedProfileSuccessfullyState;
  const _EditedProfileSuccessfullyState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_EditedProfileSuccessfullyStateCopyWith<_$_EditedProfileSuccessfullyState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NeedsRegistrationStateCopyWith<$Res> {
  factory _$$_NeedsRegistrationStateCopyWith(_$_NeedsRegistrationState value,
          $Res Function(_$_NeedsRegistrationState) then) =
      __$$_NeedsRegistrationStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_NeedsRegistrationStateCopyWithImpl<$Res>
    extends _$ProfileInitializationStateCopyWithImpl<$Res,
        _$_NeedsRegistrationState>
    implements _$$_NeedsRegistrationStateCopyWith<$Res> {
  __$$_NeedsRegistrationStateCopyWithImpl(_$_NeedsRegistrationState _value,
      $Res Function(_$_NeedsRegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_NeedsRegistrationState(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NeedsRegistrationState extends _NeedsRegistrationState {
  const _$_NeedsRegistrationState({required this.userUid}) : super._();

  @override
  final String userUid;

  @override
  String toString() {
    return 'ProfileInitializationState.needsRegistration(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeedsRegistrationState &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NeedsRegistrationStateCopyWith<_$_NeedsRegistrationState> get copyWith =>
      __$$_NeedsRegistrationStateCopyWithImpl<_$_NeedsRegistrationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return needsRegistration(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return needsRegistration?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return needsRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return needsRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(this);
    }
    return orElse();
  }
}

abstract class _NeedsRegistrationState extends ProfileInitializationState {
  const factory _NeedsRegistrationState({required final String userUid}) =
      _$_NeedsRegistrationState;
  const _NeedsRegistrationState._() : super._();

  String get userUid;
  @JsonKey(ignore: true)
  _$$_NeedsRegistrationStateCopyWith<_$_NeedsRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ProfileInitializationStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState({required this.error}) : super._();

  @override
  final Failure error;

  @override
  String toString() {
    return 'ProfileInitializationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

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
    required TResult Function(User user) initialized,
    required TResult Function(User user) editedProfileSuccessfully,
    required TResult Function(String userUid) needsRegistration,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? initialized,
    TResult? Function(User user)? editedProfileSuccessfully,
    TResult? Function(String userUid)? needsRegistration,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? initialized,
    TResult Function(User user)? editedProfileSuccessfully,
    TResult Function(String userUid)? needsRegistration,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_EditedProfileSuccessfullyState value)
        editedProfileSuccessfully,
    required TResult Function(_NeedsRegistrationState value) needsRegistration,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult? Function(_NeedsRegistrationState value)? needsRegistration,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_EditedProfileSuccessfullyState value)?
        editedProfileSuccessfully,
    TResult Function(_NeedsRegistrationState value)? needsRegistration,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends ProfileInitializationState {
  const factory _ErrorState({required final Failure error}) = _$_ErrorState;
  const _ErrorState._() : super._();

  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
