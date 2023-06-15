part of 'suggest_friends_bloc.dart';

@freezed
class SuggestFriendsState with _$SuggestFriendsState {
  const SuggestFriendsState._();

  List<User> getFriendsFromUid(List<String> peopleUid) => users.where((element) => peopleUid.contains(element.uid)).toList();

  List<User> get users => map(initial: (_) => [], loaded: (state) => state.users);

  const factory SuggestFriendsState.initial() = _InitialState;
  const factory SuggestFriendsState.loaded({required List<User> users}) = _LoadedState;
}
