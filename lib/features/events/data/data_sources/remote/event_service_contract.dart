import '../../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../../../../../shared/domain/entities/ticket/ticket.dart';

abstract class EventService{
  Future<List<Event>> getOrganiserEvents({required String organiserUid});
  Future<Event> createEvent({required EventModel event, String? imgPath});
  Future<EventDetailed> getEventDetails({required Event event});
  Future<Event> editEvent({required EventModel event, String? imgPath});
  Future<void> deleteEvent({required String eventUid});
  Future<Ticket> createTicket({required Ticket ticket, required String eventUid});
  Future<void> removeAllTickets({required String eventUid});
  Future<Event> publishEvent({required Event event});
  Future<Ticket> removeTicket({required Ticket ticket, required String eventUid});
}