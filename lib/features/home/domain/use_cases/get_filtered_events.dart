import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../entities/filter_settings/filter_settings.dart';
import '../repositories/home_data_repository_contract.dart';

class GetFilteredEvents implements UseCase<List<Event>, GetFilteredEventsParams>{
  final HomeDataRepository homeDataRepository;

  @override
  Future<Either<Failure, List<Event>>> execute(GetFilteredEventsParams params) {
    return homeDataRepository.getFilteredEvents(filterSettings: params.filterSettings, take: params.take, lastLoadedEvent: params.lastLoadedEvent);
  }

  const GetFilteredEvents({
    required this.homeDataRepository,
  });
}

class GetFilteredEventsParams{
  final FilterSettings? filterSettings;
  final EventModel? lastLoadedEvent;
  final int? take;
  GetFilteredEventsParams({this.filterSettings, this.lastLoadedEvent, this.take});
}