import 'package:allxclusive/features/friend_events/friend_events/domain/repositories/friend_events_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../shared/domain/entities/event/event.dart';

class GetFriendEvents implements UseCase<List<Event>, GetFriendEventsParams>{
  final FriendEventsRepository friendEventsRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetFriendEventsParams params) {
    return friendEventsRepository.getFriendEvents(friendUid: params.friendUid);
  }

  const GetFriendEvents({
    required this.friendEventsRepository,
  });
}

class GetFriendEventsParams{
  final String friendUid;
  GetFriendEventsParams({required this.friendUid});
}