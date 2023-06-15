// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendsPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchFriend,
    required TResult Function(User friend) addFriend,
    required TResult Function(User friend) removeFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchFriend,
    TResult? Function(User friend)? addFriend,
    TResult? Function(User friend)? removeFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchFriend,
    TResult Function(User friend)? addFriend,
    TResult Function(User friend)? removeFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFriendEvent value) searchFriend,
    required TResult Function(_AddFriendEvent value) addFriend,
    required TResult Function(_RemoveFriendEvent value) removeFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFriendEvent value)? searchFriend,
    TResult? Function(_AddFriendEvent value)? addFriend,
    TResult? Function(_RemoveFriendEvent value)? removeFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFriendEvent value)? searchFriend,
    TResult Function(_AddFriendEvent value)? addFriend,
    TResult Function(_RemoveFriendEvent value)? removeFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsPickerEventCopyWith<$Res> {
  factory $FriendsPickerEventCopyWith(
          FriendsPickerEvent value, $Res Function(FriendsPickerEvent) then) =
      _$FriendsPickerEventCopyWithImpl<$Res, FriendsPickerEvent>;
}

/// @nodoc
class _$FriendsPickerEventCopyWithImpl<$Res, $Val extends FriendsPickerEvent>
    implements $FriendsPickerEventCopyWith<$Res> {
  _$FriendsPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchFriendEventCopyWith<$Res> {
  factory _$$_SearchFriendEventCopyWith(_$_SearchFriendEvent value,
          $Res Function(_$_SearchFriendEvent) then) =
      __$$_SearchFriendEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$_SearchFriendEventCopyWithImpl<$Res>
    extends _$FriendsPickerEventCopyWithImpl<$Res, _$_SearchFriendEvent>
    implements _$$_SearchFriendEventCopyWith<$Res> {
  __$$_SearchFriendEventCopyWithImpl(
      _$_SearchFriendEvent _value, $Res Function(_$_SearchFriendEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$_SearchFriendEvent(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchFriendEvent implements _SearchFriendEvent {
  const _$_SearchFriendEvent({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'FriendsPickerEvent.searchFriend(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFriendEvent &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchFriendEventCopyWith<_$_SearchFriendEvent> get copyWith =>
      __$$_SearchFriendEventCopyWithImpl<_$_SearchFriendEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchFriend,
    required TResult Function(User friend) addFriend,
    required TResult Function(User friend) removeFriend,
  }) {
    return searchFriend(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchFriend,
    TResult? Function(User friend)? addFriend,
    TResult? Function(User friend)? removeFriend,
  }) {
    return searchFriend?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchFriend,
    TResult Function(User friend)? addFriend,
    TResult Function(User friend)? removeFriend,
    required TResult orElse(),
  }) {
    if (searchFriend != null) {
      return searchFriend(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFriendEvent value) searchFriend,
    required TResult Function(_AddFriendEvent value) addFriend,
    required TResult Function(_RemoveFriendEvent value) removeFriend,
  }) {
    return searchFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFriendEvent value)? searchFriend,
    TResult? Function(_AddFriendEvent value)? addFriend,
    TResult? Function(_RemoveFriendEvent value)? removeFriend,
  }) {
    return searchFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFriendEvent value)? searchFriend,
    TResult Function(_AddFriendEvent value)? addFriend,
    TResult Function(_RemoveFriendEvent value)? removeFriend,
    required TResult orElse(),
  }) {
    if (searchFriend != null) {
      return searchFriend(this);
    }
    return orElse();
  }
}

abstract class _SearchFriendEvent implements FriendsPickerEvent {
  const factory _SearchFriendEvent({required final String searchQuery}) =
      _$_SearchFriendEvent;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$_SearchFriendEventCopyWith<_$_SearchFriendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFriendEventCopyWith<$Res> {
  factory _$$_AddFriendEventCopyWith(
          _$_AddFriendEvent value, $Res Function(_$_AddFriendEvent) then) =
      __$$_AddFriendEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User friend});

  $UserCopyWith<$Res> get friend;
}

/// @nodoc
class __$$_AddFriendEventCopyWithImpl<$Res>
    extends _$FriendsPickerEventCopyWithImpl<$Res, _$_AddFriendEvent>
    implements _$$_AddFriendEventCopyWith<$Res> {
  __$$_AddFriendEventCopyWithImpl(
      _$_AddFriendEvent _value, $Res Function(_$_AddFriendEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friend = null,
  }) {
    return _then(_$_AddFriendEvent(
      friend: null == friend
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get friend {
    return $UserCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc

class _$_AddFriendEvent implements _AddFriendEvent {
  const _$_AddFriendEvent({required this.friend});

  @override
  final User friend;

  @override
  String toString() {
    return 'FriendsPickerEvent.addFriend(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFriendEvent &&
            (identical(other.friend, friend) || other.friend == friend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFriendEventCopyWith<_$_AddFriendEvent> get copyWith =>
      __$$_AddFriendEventCopyWithImpl<_$_AddFriendEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchFriend,
    required TResult Function(User friend) addFriend,
    required TResult Function(User friend) removeFriend,
  }) {
    return addFriend(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchFriend,
    TResult? Function(User friend)? addFriend,
    TResult? Function(User friend)? removeFriend,
  }) {
    return addFriend?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchFriend,
    TResult Function(User friend)? addFriend,
    TResult Function(User friend)? removeFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFriendEvent value) searchFriend,
    required TResult Function(_AddFriendEvent value) addFriend,
    required TResult Function(_RemoveFriendEvent value) removeFriend,
  }) {
    return addFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFriendEvent value)? searchFriend,
    TResult? Function(_AddFriendEvent value)? addFriend,
    TResult? Function(_RemoveFriendEvent value)? removeFriend,
  }) {
    return addFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFriendEvent value)? searchFriend,
    TResult Function(_AddFriendEvent value)? addFriend,
    TResult Function(_RemoveFriendEvent value)? removeFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(this);
    }
    return orElse();
  }
}

abstract class _AddFriendEvent implements FriendsPickerEvent {
  const factory _AddFriendEvent({required final User friend}) =
      _$_AddFriendEvent;

  User get friend;
  @JsonKey(ignore: true)
  _$$_AddFriendEventCopyWith<_$_AddFriendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFriendEventCopyWith<$Res> {
  factory _$$_RemoveFriendEventCopyWith(_$_RemoveFriendEvent value,
          $Res Function(_$_RemoveFriendEvent) then) =
      __$$_RemoveFriendEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User friend});

  $UserCopyWith<$Res> get friend;
}

/// @nodoc
class __$$_RemoveFriendEventCopyWithImpl<$Res>
    extends _$FriendsPickerEventCopyWithImpl<$Res, _$_RemoveFriendEvent>
    implements _$$_RemoveFriendEventCopyWith<$Res> {
  __$$_RemoveFriendEventCopyWithImpl(
      _$_RemoveFriendEvent _value, $Res Function(_$_RemoveFriendEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friend = null,
  }) {
    return _then(_$_RemoveFriendEvent(
      friend: null == friend
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get friend {
    return $UserCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc

class _$_RemoveFriendEvent implements _RemoveFriendEvent {
  const _$_RemoveFriendEvent({required this.friend});

  @override
  final User friend;

  @override
  String toString() {
    return 'FriendsPickerEvent.removeFriend(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFriendEvent &&
            (identical(other.friend, friend) || other.friend == friend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFriendEventCopyWith<_$_RemoveFriendEvent> get copyWith =>
      __$$_RemoveFriendEventCopyWithImpl<_$_RemoveFriendEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchFriend,
    required TResult Function(User friend) addFriend,
    required TResult Function(User friend) removeFriend,
  }) {
    return removeFriend(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchFriend,
    TResult? Function(User friend)? addFriend,
    TResult? Function(User friend)? removeFriend,
  }) {
    return removeFriend?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchFriend,
    TResult Function(User friend)? addFriend,
    TResult Function(User friend)? removeFriend,
    required TResult orElse(),
  }) {
    if (removeFriend != null) {
      return removeFriend(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFriendEvent value) searchFriend,
    required TResult Function(_AddFriendEvent value) addFriend,
    required TResult Function(_RemoveFriendEvent value) removeFriend,
  }) {
    return removeFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFriendEvent value)? searchFriend,
    TResult? Function(_AddFriendEvent value)? addFriend,
    TResult? Function(_RemoveFriendEvent value)? removeFriend,
  }) {
    return removeFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFriendEvent value)? searchFriend,
    TResult Function(_AddFriendEvent value)? addFriend,
    TResult Function(_RemoveFriendEvent value)? removeFriend,
    required TResult orElse(),
  }) {
    if (removeFriend != null) {
      return removeFriend(this);
    }
    return orElse();
  }
}

abstract class _RemoveFriendEvent implements FriendsPickerEvent {
  const factory _RemoveFriendEvent({required final User friend}) =
      _$_RemoveFriendEvent;

  User get friend;
  @JsonKey(ignore: true)
  _$$_RemoveFriendEventCopyWith<_$_RemoveFriendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FriendsPickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends)
        initialized,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends, Failure error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsPickerStateCopyWith<$Res> {
  factory $FriendsPickerStateCopyWith(
          FriendsPickerState value, $Res Function(FriendsPickerState) then) =
      _$FriendsPickerStateCopyWithImpl<$Res, FriendsPickerState>;
}

/// @nodoc
class _$FriendsPickerStateCopyWithImpl<$Res, $Val extends FriendsPickerState>
    implements $FriendsPickerStateCopyWith<$Res> {
  _$FriendsPickerStateCopyWithImpl(this._value, this._then);

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
    extends _$FriendsPickerStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'FriendsPickerState.initial()';
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
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends)
        initialized,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends, Failure error)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
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
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends FriendsPickerState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_InitializedStateCopyWith<$Res> {
  factory _$$_InitializedStateCopyWith(
          _$_InitializedState value, $Res Function(_$_InitializedState) then) =
      __$$_InitializedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> suggestedFriends, List<User> addedFriends});
}

/// @nodoc
class __$$_InitializedStateCopyWithImpl<$Res>
    extends _$FriendsPickerStateCopyWithImpl<$Res, _$_InitializedState>
    implements _$$_InitializedStateCopyWith<$Res> {
  __$$_InitializedStateCopyWithImpl(
      _$_InitializedState _value, $Res Function(_$_InitializedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedFriends = null,
    Object? addedFriends = null,
  }) {
    return _then(_$_InitializedState(
      suggestedFriends: null == suggestedFriends
          ? _value._suggestedFriends
          : suggestedFriends // ignore: cast_nullable_to_non_nullable
              as List<User>,
      addedFriends: null == addedFriends
          ? _value._addedFriends
          : addedFriends // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_InitializedState extends _InitializedState {
  const _$_InitializedState(
      {required final List<User> suggestedFriends,
      required final List<User> addedFriends})
      : _suggestedFriends = suggestedFriends,
        _addedFriends = addedFriends,
        super._();

  final List<User> _suggestedFriends;
  @override
  List<User> get suggestedFriends {
    if (_suggestedFriends is EqualUnmodifiableListView)
      return _suggestedFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedFriends);
  }

  final List<User> _addedFriends;
  @override
  List<User> get addedFriends {
    if (_addedFriends is EqualUnmodifiableListView) return _addedFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedFriends);
  }

  @override
  String toString() {
    return 'FriendsPickerState.initialized(suggestedFriends: $suggestedFriends, addedFriends: $addedFriends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedState &&
            const DeepCollectionEquality()
                .equals(other._suggestedFriends, _suggestedFriends) &&
            const DeepCollectionEquality()
                .equals(other._addedFriends, _addedFriends));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestedFriends),
      const DeepCollectionEquality().hash(_addedFriends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedStateCopyWith<_$_InitializedState> get copyWith =>
      __$$_InitializedStateCopyWithImpl<_$_InitializedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends)
        initialized,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends, Failure error)
        error,
  }) {
    return initialized(suggestedFriends, addedFriends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
  }) {
    return initialized?.call(suggestedFriends, addedFriends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(suggestedFriends, addedFriends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_ErrorState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedState extends FriendsPickerState {
  const factory _InitializedState(
      {required final List<User> suggestedFriends,
      required final List<User> addedFriends}) = _$_InitializedState;
  const _InitializedState._() : super._();

  List<User> get suggestedFriends;
  List<User> get addedFriends;
  @JsonKey(ignore: true)
  _$$_InitializedStateCopyWith<_$_InitializedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<User> suggestedFriends, List<User> addedFriends, Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$FriendsPickerStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedFriends = null,
    Object? addedFriends = null,
    Object? error = null,
  }) {
    return _then(_$_ErrorState(
      suggestedFriends: null == suggestedFriends
          ? _value._suggestedFriends
          : suggestedFriends // ignore: cast_nullable_to_non_nullable
              as List<User>,
      addedFriends: null == addedFriends
          ? _value._addedFriends
          : addedFriends // ignore: cast_nullable_to_non_nullable
              as List<User>,
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
  const _$_ErrorState(
      {required final List<User> suggestedFriends,
      required final List<User> addedFriends,
      required this.error})
      : _suggestedFriends = suggestedFriends,
        _addedFriends = addedFriends,
        super._();

  final List<User> _suggestedFriends;
  @override
  List<User> get suggestedFriends {
    if (_suggestedFriends is EqualUnmodifiableListView)
      return _suggestedFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedFriends);
  }

  final List<User> _addedFriends;
  @override
  List<User> get addedFriends {
    if (_addedFriends is EqualUnmodifiableListView) return _addedFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedFriends);
  }

  @override
  final Failure error;

  @override
  String toString() {
    return 'FriendsPickerState.error(suggestedFriends: $suggestedFriends, addedFriends: $addedFriends, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality()
                .equals(other._suggestedFriends, _suggestedFriends) &&
            const DeepCollectionEquality()
                .equals(other._addedFriends, _addedFriends) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestedFriends),
      const DeepCollectionEquality().hash(_addedFriends),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends)
        initialized,
    required TResult Function(
            List<User> suggestedFriends, List<User> addedFriends, Failure error)
        error,
  }) {
    return error(suggestedFriends, addedFriends, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult? Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
  }) {
    return error?.call(suggestedFriends, addedFriends, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends)?
        initialized,
    TResult Function(List<User> suggestedFriends, List<User> addedFriends,
            Failure error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(suggestedFriends, addedFriends, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_InitializedState value) initialized,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_InitializedState value)? initialized,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_InitializedState value)? initialized,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends FriendsPickerState {
  const factory _ErrorState(
      {required final List<User> suggestedFriends,
      required final List<User> addedFriends,
      required final Failure error}) = _$_ErrorState;
  const _ErrorState._() : super._();

  List<User> get suggestedFriends;
  List<User> get addedFriends;
  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
