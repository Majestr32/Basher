import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/event/event.dart';

abstract class MapEventRepository{
  Future<Either<Failure,List<Event>>> getEventsOnMap();
  Future<Either<Failure, Event>> getSelectedEvent({required EventModel event});
}