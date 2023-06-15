import 'package:allxclusive/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../../shared/domain/entities/event/event.dart';

abstract class FriendEventsRepository{
  Future<Either<Failure,List<Event>>> getFriendEvents({required String friendUid});
}