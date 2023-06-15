import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/events/domain/use_cases/delete_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/remove_all_tickets.dart';
import 'package:allxclusive/features/events/domain/use_cases/remove_ticket.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../../../../../shared/domain/entities/ticket/ticket.dart';
import '../../../domain/use_cases/get_event_details.dart';
import '../user_events/user_events_bloc.dart';

part 'event_details_event.dart';
part 'event_details_state.dart';
part 'event_details_bloc.freezed.dart';

class EventDetailsBloc extends Bloc<EventDetailsEvent, EventDetailsState> {
  final GetEventDetails _getEventDetailsCase;
  final RemoveTicket _removeTicketCase;
  final RemoveAllTickets _removeAllTicketsCase;
  late final StreamSubscription _userEventsBlocSubscription;
  EventDetailsBloc({required GetEventDetails getEventDetailsCase,
    required RemoveTicket removeTicketCase,
    required RemoveAllTickets removeAllTicketsCase,
    required Event event, required UserEventsBloc userEventsBloc})
      : _getEventDetailsCase = getEventDetailsCase,
        _removeTicketCase = removeTicketCase,
        _removeAllTicketsCase = removeAllTicketsCase,
        super(EventDetailsState.initial(event: event)) {
    _userEventsBlocSubscription = userEventsBloc.stream.listen((event) {
      event.maybeMap(
          updatedEvent: (event){
            add(EventDetailsEvent.removeAllTickets(eventUid: state.eventDetails!.event.eventModel.uid!));
            add(EventDetailsEvent.loadDetails(event: event.event));
          },
          orElse: (){});
    });
    on<EventDetailsEvent>(_mapEventDetailsToState);
  }

  Future<void> _mapEventDetailsToState(EventDetailsEvent event, Emitter<EventDetailsState> emit) => event.map(
      addTicketToEvent: (e) => _addTicketToEvent(e, emit),
      removeAllTickets: (e) => _removeAllTickets(e, emit),
      loadDetails: (e) => _loadDetails(e, emit),
      removeTicket: (e) => _removeTicket(e, emit)
  );

  Future<void> _removeAllTickets(_RemoveAllTicketsEvent event, Emitter<EventDetailsState> emit) async{
    final failure = await _removeAllTicketsCase.execute(RemoveAllTicketsParams(eventUid: state.eventDetails!.event.eventModel.uid!));
    if(failure != null){
      final previousState = state;
      emit(EventDetailsState.error(failure: failure));
      emit(previousState);
    }else{
      final updatedEvent = EventDetailed(event: state.eventDetails!.event, tickets: []);
      emit(EventDetailsState.loaded(event: updatedEvent));
    }
  }


  Future<void> _removeTicket(_RemoveTicketEvent event, Emitter<EventDetailsState> emit) async{
    final failureOrTicket = await _removeTicketCase.execute(RemoveTicketParams(eventUid: state.eventDetails!.event.eventModel.uid!, ticket: event.ticket));
    failureOrTicket.fold((l){
      final previousState = state;
      emit(EventDetailsState.error(failure: l));
      emit(previousState);
    }, (r){
      final updatedEvent = EventDetailed(event: state.eventDetails!.event, tickets: state.eventDetails!.tickets.where((t) => t.uid != event.ticket.uid).toList());
      emit(EventDetailsState.loaded(event: updatedEvent));
    });
  }

  Future<void> _addTicketToEvent(_AddTicketToEventEvent event, Emitter<EventDetailsState> emit) async{
    final updatedEvent = EventDetailed(event: state.eventDetails!.event, tickets: [event.ticket,...state.eventDetails!.tickets]);
    emit(EventDetailsState.loaded(event: updatedEvent));
  }

  Future<void> _loadDetails(_LoadDetailsEvent event, Emitter<EventDetailsState> emit) async{
    final failureOrEventDetailed = await _getEventDetailsCase.execute(GetEventDetailsParams(event: event.event));
    failureOrEventDetailed.fold((l){
      emit(EventDetailsState.error(failure: l));
    }, (r){
      emit(EventDetailsState.loaded(event: r));
    });
  }

  @override
  Future<void> close() {
    _userEventsBlocSubscription.cancel();
    return super.close();
  }
}
