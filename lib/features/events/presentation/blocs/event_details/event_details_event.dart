part of 'event_details_bloc.dart';

@freezed
class EventDetailsEvent with _$EventDetailsEvent {
  const factory EventDetailsEvent.addTicketToEvent({required Ticket ticket}) = _AddTicketToEventEvent;
  const factory EventDetailsEvent.removeTicket({required Ticket ticket}) = _RemoveTicketEvent;
  const factory EventDetailsEvent.removeAllTickets({required String eventUid}) = _RemoveAllTicketsEvent;
  const factory EventDetailsEvent.loadDetails({required Event event}) = _LoadDetailsEvent;
}
