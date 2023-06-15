
import 'package:allxclusive/features/ticket_purchase/domain/repositories/friends_search_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class FetchSuggestedFriends implements UseCase<List<User>,FetchSuggestedFriendsParams>{
  final FriendsSearchRepository friendsSearchRepository;

  @override
  Future<Either<Failure,List<User>>> execute(FetchSuggestedFriendsParams params) {
    return friendsSearchRepository.fetchSuggestedFriends();
  }

  const FetchSuggestedFriends({
    required this.friendsSearchRepository,
  });
}

class FetchSuggestedFriendsParams{
  
}