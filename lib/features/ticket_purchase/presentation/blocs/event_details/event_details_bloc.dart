import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/user_to_event_metadata/user_to_event_metadata.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../../../../events/domain/use_cases/get_event_details.dart';
import '../../../domain/use_cases/get_user_to_event_metadata.dart';
import '../../../domain/use_cases/send_join_request.dart';
import '../../../domain/use_cases/track_request.dart';

part 'event_details_event.dart';
part 'event_details_state.dart';
part 'event_details_bloc.freezed.dart';

class EventDetailsBloc extends Bloc<EventDetailsEvent, EventDetailsState> {
  final GetEventDetails _getEventDetailsCase;
  final GetUserToEventMetadata _getUserToEventMetadataCase;
  final SendJoinRequest _sendJoinRequestCase;
  final TrackRequest _trackRequestCase;

  late final StreamSubscription _trackRequestSubscription;

  EventDetailsBloc({required GetEventDetails getEventDetailsCase,
    required GetUserToEventMetadata getUserToEventMetadataCase,
    required SendJoinRequest sendJoinRequestCase,
    required String userUid,
    required TrackRequest trackRequestCase,
    required Event event})
      : _getEventDetailsCase = getEventDetailsCase,
        _getUserToEventMetadataCase = getUserToEventMetadataCase,
        _sendJoinRequestCase = sendJoinRequestCase,
        _trackRequestCase = trackRequestCase,
        super(EventDetailsState.initial(event: event, userUid: userUid)) {
    _trackRequestSubscription = _trackRequestCase.execute(TrackRequestParams(organiserUid: event.eventModel.organiserUid, fromUserUid: userUid, eventUid: event.eventModel.uid!)).listen((_) {
      add(EventDetailsEvent.loadDetails(event: event));
    });
    on<EventDetailsEvent>(_mapEventDetailsToState);
  }

  Future<void> _mapEventDetailsToState(EventDetailsEvent event, Emitter<EventDetailsState> emit) => event.map(
      loadDetails: (e) => _loadDetails(e, emit),
      sendJoinRequest: (e) => _sendJoinRequest(e, emit)
  );

  Future<void> _sendJoinRequest(_SendJoinRequestEvent event, Emitter<EventDetailsState> emit) async{
    final previousState = state;
    final failure = await _sendJoinRequestCase.execute(SendJoinRequestParams(joinRequest: event.joinRequest));
    if(failure != null){
      emit(EventDetailsState.error(failure: failure));
      emit(previousState);
    }else{
      emit(EventDetailsState.sentRequest(userUid: state.userUid!, event: state.eventDetails!, metadata: state.metadata!.copyWith.call(sentRequest: true)));
      emit(EventDetailsState.loaded(userUid: state.userUid!, event: state.eventDetails!, metadata: state.metadata!.copyWith.call(sentRequest: true)));
    }
  }


  Future<void> _loadDetails(_LoadDetailsEvent event, Emitter<EventDetailsState> emit) async{
    final failureOrEventDetailed = await _getEventDetailsCase.execute(GetEventDetailsParams(event: event.event));
    final failureOrMetadata = await _getUserToEventMetadataCase.execute(GetUserToEventMetadataParams(userUid: state.userUid!, organiserUid: event.event.eventModel.organiserUid, eventUid: event.event.eventModel.uid!));

    failureOrEventDetailed.fold((l){
      emit(EventDetailsState.error(failure: l));
    }, (r1){
      failureOrMetadata.fold((l){
        emit(EventDetailsState.error(failure: l));
      }, (r2){
        emit(EventDetailsState.loaded(userUid: state.userUid!, event: r1, metadata: r2));
      });
    });
  }

  @override
  Future<void> close() {
    _trackRequestSubscription.cancel();
    return super.close();
  }
}
