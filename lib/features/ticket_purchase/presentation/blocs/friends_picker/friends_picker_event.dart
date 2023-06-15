part of 'friends_picker_bloc.dart';

@freezed
class FriendsPickerEvent with _$FriendsPickerEvent {
  const factory FriendsPickerEvent.searchFriend({required String searchQuery}) = _SearchFriendEvent;
  const factory FriendsPickerEvent.addFriend({required User friend}) = _AddFriendEvent;
  const factory FriendsPickerEvent.removeFriend({required User friend}) = _RemoveFriendEvent;
}
