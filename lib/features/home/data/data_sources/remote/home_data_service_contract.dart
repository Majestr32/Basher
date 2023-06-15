import '../../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../../shared/domain/entities/event/event.dart';
import '../../../domain/entities/filter_settings/filter_settings.dart';

abstract class HomeDataService{
  Future<List<Event>> getNewEvents({EventModel? lastLoadedEvent, int? take});
  Future<List<Event>> getThisWeekEvents({EventModel? lastLoadedEvent, int? take});
  Future<List<Event>> getFilteredEvents({required FilterSettings? filterSettings, EventModel? lastLoadedEvent, int? take});
}