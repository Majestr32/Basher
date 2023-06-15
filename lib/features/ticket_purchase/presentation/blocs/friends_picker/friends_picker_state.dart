part of 'friends_picker_bloc.dart';

@freezed
class FriendsPickerState with _$FriendsPickerState {
  const FriendsPickerState._();

  List<User> get suggestedFriends => maybeMap(
      initialized: (state) => state.suggestedFriends,
      error: (state) => state.suggestedFriends,
      orElse: () => []);

  List<User> get addedFriends => maybeMap(
      initialized: (state) => state.addedFriends,
      error: (state) => state.addedFriends,
      orElse: () => []);

  Failure? get error => maybeMap(
      error: (state) => state.error,
      orElse: () => null);

  const factory FriendsPickerState.initial() = _InitialState;
  const factory FriendsPickerState.initialized({required List<User> suggestedFriends, required List<User> addedFriends}) = _InitializedState;
  const factory FriendsPickerState.error({required List<User> suggestedFriends, required List<User> addedFriends, required Failure error}) = _ErrorState;
}
