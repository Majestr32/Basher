import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/home/domain/entities/filter_settings/filter_settings.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';

abstract class HomeDataRepository{
  Future<Either<Failure,List<Event>>> getNewEvents({EventModel? lastLoadedEvent, int? take});
  Future<Either<Failure,List<Event>>> getThisWeekEvents({EventModel? lastLoadedEvent, int? take});
  Future<Either<Failure,List<Event>>> getFilteredEvents({required FilterSettings? filterSettings, EventModel? lastLoadedEvent, int? take});
}