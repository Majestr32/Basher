import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';

abstract class MapEventsService{
  Future<List<Event>> getEventsOnMap();
  Future<Event> getSelectedEvent({required EventModel event});
}