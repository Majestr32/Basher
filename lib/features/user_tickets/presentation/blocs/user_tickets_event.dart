part of 'user_tickets_bloc.dart';

@freezed
class UserTicketsEvent with _$UserTicketsEvent {
  const factory UserTicketsEvent.fetchUserTickets({required String userUid}) = _FetchUserTicketsEvent;
  const factory UserTicketsEvent.addTicket({required UserTicket ticket}) = _AddTicketEvent;
  const factory UserTicketsEvent.reset() = _ResetEvent;
}
