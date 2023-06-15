part of 'join_requests_bloc.dart';

@freezed
class JoinRequestsEvent with _$JoinRequestsEvent {
  const factory JoinRequestsEvent.fetchJoinRequests({required String userUid}) = _FetchJoinRequestsEvent;
  const factory JoinRequestsEvent.acceptRequest({required String requestUid}) = _AcceptRequestEvent;
  const factory JoinRequestsEvent.denyRequest({required String requestUid}) = _DenyRequestEvent;
  const factory JoinRequestsEvent.reset() = _ResetEvent;
}
