import 'package:allxclusive/core/usecases/usecase.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/friends_search_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

class SearchPeople implements UseCase<List<User>,SearchPeopleParams>{
  final FriendsSearchRepository friendsSearchRepository;

  @override
  Future<Either<Failure,List<User>>> execute(SearchPeopleParams params) {
    return friendsSearchRepository.searchPeople(searchQuery: params.searchQuery);
  }

  const SearchPeople({
    required this.friendsSearchRepository,
  });
}

class SearchPeopleParams{
  final String searchQuery;
  SearchPeopleParams({required this.searchQuery});
}