import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';

abstract class FriendEventsService{
  Future<List<Event>> getFriendEvents({required String friendUid});
}