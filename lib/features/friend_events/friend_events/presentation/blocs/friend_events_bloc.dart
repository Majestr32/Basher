import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/event/event.dart';
import '../../domain/use_cases/get_friend_events.dart';

part 'friend_events_event.dart';
part 'friend_events_state.dart';
part 'friend_events_bloc.freezed.dart';

class FriendEventsBloc extends Bloc<FriendEventsEvent, FriendEventsState> {
  final GetFriendEvents _getFriendEventsCase;

  FriendEventsBloc({required GetFriendEvents getFriendEventsCase}) :
        _getFriendEventsCase = getFriendEventsCase,
        super(const FriendEventsState.initial()) {
    on<FriendEventsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(FriendEventsEvent event, Emitter<FriendEventsState> emit) => event.map(fetchFriendEvents: (e) => _fetchFriendEvents(e,emit));

  Future<void> _fetchFriendEvents(_FetchFriendEventsEvent event, Emitter<FriendEventsState> emit) async{
    final failureOrEvents = await _getFriendEventsCase.execute(GetFriendEventsParams(friendUid: event.friendUid));
    failureOrEvents.fold((l){
      emit(FriendEventsState.loaded(events: []));
    }, (r){
      emit(FriendEventsState.loaded(events: r));
    });
  }
}
