import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

abstract class FriendsSearchRepository{
  Future<Either<Failure, List<User>>> searchPeople({required String searchQuery});
  Future<Either<Failure, List<User>>> fetchSuggestedFriends();
}