import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/friend_events/friend_events/data/data_sources/remote/friend_events_service_contract.dart';
import 'package:allxclusive/features/friend_events/friend_events/domain/repositories/friend_events_repository_contract.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:dartz/dartz.dart';

class FriendEventsRepositoryImpl implements FriendEventsRepository{
  final FriendEventsService _friendEventsService;

  @override
  Future<Either<Failure, List<Event>>> getFriendEvents({required String friendUid}) async{
    try{
      final events = await _friendEventsService.getFriendEvents(friendUid: friendUid);
      return Right(events);
    }on Failure catch(e){
      return Left(e);
    }
  }

  const FriendEventsRepositoryImpl({
    required FriendEventsService friendEventsService,
  }) : _friendEventsService = friendEventsService;
}