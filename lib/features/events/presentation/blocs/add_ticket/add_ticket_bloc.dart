import 'package:allxclusive/core/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/ticket/ticket.dart';
import '../../../domain/use_cases/create_ticket.dart';
import '../event_details/event_details_bloc.dart';

part 'add_ticket_event.dart';
part 'add_ticket_state.dart';
part 'add_ticket_bloc.freezed.dart';

class AddTicketBloc extends Bloc<AddTicketEvent, AddTicketState> {
  final CreateTicket _createTicketCase;
  final EventDetailsBloc _eventDetailsBloc;

  AddTicketBloc({required CreateTicket createTicketCase,
  required EventDetailsBloc eventDetailsBloc}) :
        _createTicketCase = createTicketCase,
        _eventDetailsBloc = eventDetailsBloc,
        super(const AddTicketState.initial()) {
    on<AddTicketEvent>(_mapAddTicketToState);
  }

  Future<void> _mapAddTicketToState(AddTicketEvent event, Emitter<AddTicketState> emit) => event.map(
    addTicket: (e) => _addTicket(e, emit)
  );

  Future<void> _addTicket(_AddTicketEvent event, Emitter<AddTicketState> emit) async{
    emit(const AddTicketState.loading());
    final failureOrTicket = await _createTicketCase.execute(CreateTicketParams(eventUid: event.eventUid, ticket: event.ticket));
    failureOrTicket.fold((l){
      emit(AddTicketState.error(failure: l));
      emit(const AddTicketState.initial());
    }, (r){
      _eventDetailsBloc.add(EventDetailsEvent.addTicketToEvent(ticket: r));
      emit(AddTicketState.addedTicket(ticket: r));
    });
  }
}
