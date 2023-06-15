import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/friends_search_service_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/friends_search_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

class FriendsSearchRepositoryImpl implements FriendsSearchRepository{
  final FriendsSearchService _friendsSearchService;
  @override
  Future<Either<Failure, List<User>>> searchPeople({required String searchQuery}) async{
    try{
      return Right(await _friendsSearchService.searchPeople(searchQuery: searchQuery));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<User>>> fetchSuggestedFriends() async{
    try{
      return Right(await _friendsSearchService.fetchSuggestedFriends());
    }on Failure catch(e){
      return Left(e);
    }
  }

  const FriendsSearchRepositoryImpl({
    required FriendsSearchService friendsSearchService,
  }) : _friendsSearchService = friendsSearchService;

}