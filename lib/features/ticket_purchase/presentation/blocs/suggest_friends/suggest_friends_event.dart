part of 'suggest_friends_bloc.dart';

@freezed
class SuggestFriendsEvent with _$SuggestFriendsEvent {
  const factory SuggestFriendsEvent.fetchFriendSuggestions() = _FetchFriendSuggestionsEvent;
}
