part of 'join_requests_bloc.dart';

@freezed
class JoinRequestsState with _$JoinRequestsState {
  const JoinRequestsState._();

  List<JoinRequest>? get joinRequests => maybeMap(
      loaded: (state) => state.joinRequests,
      loading: (state) => state.joinRequests,
      orElse: () => null);

  String? get userUid => maybeMap(
      loaded: (state) => state.userUid,
      loading: (state) => state.userUid,
      orElse: () => null);

  const factory JoinRequestsState.initial() = _InitialState;
  const factory JoinRequestsState.loaded({required List<JoinRequest> joinRequests, required String userUid}) = _LoadedState;
  const factory JoinRequestsState.loading({required List<JoinRequest> joinRequests, required String userUid}) = _LoadingState;
  const factory JoinRequestsState.error({required Failure failure}) = _ErrorState;
}
