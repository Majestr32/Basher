part of 'add_ticket_bloc.dart';

@freezed
class AddTicketEvent with _$AddTicketEvent {
  const factory AddTicketEvent.addTicket({required Ticket ticket, required String eventUid}) = _AddTicketEvent;
}
