import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import '../../../domain/entities/join_request/join_request.dart';
import '../../../domain/use_cases/accept_join_requests.dart';
import '../../../domain/use_cases/deny_join_requests.dart';
import '../../../domain/use_cases/get_join_requests.dart';
import '../../../domain/use_cases/listen_join_requests_changed.dart';

part 'join_requests_event.dart';
part 'join_requests_state.dart';
part 'join_requests_bloc.freezed.dart';

class JoinRequestsBloc extends Bloc<JoinRequestsEvent, JoinRequestsState> {
  late final StreamSubscription _profileInitializationSubscription;
  StreamSubscription? _listenJoinRequestsChangesSubscription;

  final AcceptJoinRequests _acceptJoinRequestsCase;
  final DenyJoinRequests _denyJoinRequestsCase;
  final GetJoinRequests _getJoinRequestsCase;
  final ListenJoinRequestsChanged _listenJoinRequestsChangedCase;

  JoinRequestsBloc({
    required ProfileInitializationBloc profileInitializationBloc,
    required AcceptJoinRequests acceptJoinRequestsCase,
    required GetJoinRequests getJoinRequestsCase,
    required ListenJoinRequestsChanged listenJoinRequestsChangedCase,
    required DenyJoinRequests denyJoinRequestsCase}) :
        _acceptJoinRequestsCase = acceptJoinRequestsCase,
        _denyJoinRequestsCase = denyJoinRequestsCase,
        _getJoinRequestsCase = getJoinRequestsCase,
        _listenJoinRequestsChangedCase = listenJoinRequestsChangedCase,
        super(const JoinRequestsState.initial()) {
    _profileInitializationSubscription = profileInitializationBloc.stream.listen((event) {
      if(event.isInitialized){
        _listenJoinRequestsChangesSubscription = _listenJoinRequestsChangedCase.execute(ListenJoinRequestsChangedParams(userUid: event.userUid!)).listen((_) {
          add(JoinRequestsEvent.fetchJoinRequests(userUid: event.user!.uid));
        });
        add(JoinRequestsEvent.fetchJoinRequests(userUid: event.user!.uid));
      }else{
        _listenJoinRequestsChangesSubscription?.cancel();
        add(const JoinRequestsEvent.reset());
      }
    });
    on<JoinRequestsEvent>(_mapJoinRequestsToState);
  }

  Future _mapJoinRequestsToState(JoinRequestsEvent event, Emitter<JoinRequestsState> emit) => event.map(
      fetchJoinRequests: (e) => _fetchJoinRequests(e, emit),
      acceptRequest: (e) => _acceptRequest(e, emit),
      denyRequest: (e) => _denyRequest(e, emit),
      reset: (e) => _reset(e, emit));

  Future<void> _reset(_ResetEvent event, Emitter<JoinRequestsState> emit) async{
    emit(const JoinRequestsState.initial());
  }

  Future<void> _denyRequest(_DenyRequestEvent event, Emitter<JoinRequestsState> emit) async{
    final failure = await _denyJoinRequestsCase.execute(DenyJoinRequestsParams(joinRequestsUid: event.requestUid, userUid: state.userUid!));
    if(failure != null){
      emit(JoinRequestsState.error(failure: failure));
    }else{
      emit(JoinRequestsState.loaded(userUid: state.userUid!, joinRequests: state.joinRequests!.where((e) => e.uid != event.requestUid).toList()));
    }
  }

  Future<void> _fetchJoinRequests(_FetchJoinRequestsEvent event, Emitter<JoinRequestsState> emit) async{
    if(state.joinRequests != null){
      emit(JoinRequestsState.loading(joinRequests: state.joinRequests!, userUid: state.userUid!));
    }
    final failureOrRequests = await _getJoinRequestsCase.execute(GetJoinRequestsParams(userUid: event.userUid));
    failureOrRequests.fold((l){
      emit(JoinRequestsState.error(failure: l));
    }, (r){
      emit(JoinRequestsState.loaded(joinRequests: r, userUid: event.userUid));
    });
  }

  Future<void> _acceptRequest(_AcceptRequestEvent event, Emitter<JoinRequestsState> emit) async{
    final failure = await _acceptJoinRequestsCase.execute(AcceptJoinRequestsParams(joinRequestsUid: event.requestUid, userUid: state.userUid!));
    if(failure != null){
      emit(JoinRequestsState.error(failure: failure));
    }else{
      emit(JoinRequestsState.loaded(userUid: state.userUid!, joinRequests: state.joinRequests!.where((e) => e.uid != event.requestUid).toList()));
    }
  }

  @override
  Future<void> close() {
    _profileInitializationSubscription.cancel();
    _listenJoinRequestsChangesSubscription?.cancel();
    return super.close();
  }
}
