import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/user_tickets/domain/use_cases/listen_user_tickets.dart';
import 'package:allxclusive/shared/data/models/remote/user_ticket_model/user_ticket_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/domain/entities/user_ticket/user_ticket.dart';
import '../../../profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import '../../domain/use_cases/get_user_tickets.dart';

part 'user_tickets_event.dart';
part 'user_tickets_state.dart';
part 'user_tickets_bloc.freezed.dart';

class UserTicketsBloc extends Bloc<UserTicketsEvent, UserTicketsState> {
  final GetUserTickets _getUserTicketsCase;
  final ListenUserTickets _listenUserTicketsCase;
  late final StreamSubscription _userTicketsStreamSubscription;
  StreamSubscription? _listenTicketsChangesSubscription;
  UserTicketsBloc({
    required GetUserTickets getUserTicketsCase,
    required ListenUserTickets listenUserTicketsCase,
    required ProfileInitializationBloc profileInitializationBloc
  }) : _getUserTicketsCase = getUserTicketsCase,
        _listenUserTicketsCase = listenUserTicketsCase,
        super(const UserTicketsState.initial()) {
    _userTicketsStreamSubscription = profileInitializationBloc.stream.listen((event) {
      if(event.isInitialized){
        add(UserTicketsEvent.fetchUserTickets(userUid: event.user!.uid));
        _listenTicketsChangesSubscription = _listenUserTicketsCase.execute(ListenUserTicketsParams(userUid: event.user!.uid)).listen((_) {
          add(UserTicketsEvent.fetchUserTickets(userUid: event.user!.uid));
        });
      }else{
        add(const UserTicketsEvent.reset());
        _listenTicketsChangesSubscription?.cancel();
      }
    });
    on<UserTicketsEvent>(_mapUserTicketsToState);
  }

  Future<void> _mapUserTicketsToState(UserTicketsEvent event, Emitter<UserTicketsState> emit) => event.map(
    fetchUserTickets: (e) => _loadDetails(e, emit),
    addTicket: (e) => _addTicket(e, emit),
    reset: (e) => _reset(e, emit)
  );

  Future<void> _reset(_ResetEvent event, Emitter<UserTicketsState> emit) async{
    emit(const UserTicketsState.initial());
  }

  Future<void> _addTicket(_AddTicketEvent event, Emitter<UserTicketsState> emit) async{
    emit(UserTicketsState.loaded(tickets: [event.ticket,...state.tickets!]));
  }

  Future<void> _loadDetails(_FetchUserTicketsEvent event, Emitter<UserTicketsState> emit) async{
    if(state.tickets != null){
      emit(UserTicketsState.loading(tickets: state.tickets!));
    }
    final failureOrTickets = await _getUserTicketsCase.execute(GetUserTicketsParams(userUid: event.userUid));
    failureOrTickets.fold((l){
      emit(UserTicketsState.error(failure: l));
    }, (r){
      emit(UserTicketsState.loaded(tickets: r));
    });
  }

  @override
  Future<void> close() {
    _userTicketsStreamSubscription.cancel();
    _listenTicketsChangesSubscription?.cancel();
    return super.close();
  }
}
