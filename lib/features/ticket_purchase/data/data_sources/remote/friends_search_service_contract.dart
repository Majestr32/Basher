import 'package:allxclusive/shared/domain/entities/user/user.dart';

abstract class FriendsSearchService{
  Future<List<User>> searchPeople({required String searchQuery});
  Future<List<User>> fetchSuggestedFriends();
}