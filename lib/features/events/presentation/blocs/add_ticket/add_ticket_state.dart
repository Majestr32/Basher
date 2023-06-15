part of 'add_ticket_bloc.dart';

@freezed
class AddTicketState with _$AddTicketState {
  const factory AddTicketState.initial() = _InitialState;
  const factory AddTicketState.addedTicket({required Ticket ticket}) = _AddedTicketState;
  const factory AddTicketState.loading() = _LoadingState;
  const factory AddTicketState.error({required Failure failure}) = _ErrorState;
}
