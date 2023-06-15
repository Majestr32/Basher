part of 'profile_initialization_bloc.dart';

@freezed
class ProfileInitializationState with _$ProfileInitializationState {
  const ProfileInitializationState._();

  String? get userUid => maybeMap(
      needsRegistration: (s) => s.userUid,
      initialized: (s) => s.user.uid,
      orElse: () => null);

  User? get user => maybeMap(
      initialized: (e) => e.user,
      orElse: () => null);

  bool get isInitialized => maybeMap(
      initialized: (_) => true,
      orElse: () => false);

  const factory ProfileInitializationState.initial() = _InitialState;
  const factory ProfileInitializationState.loading() = _LoadingState;
  const factory ProfileInitializationState.initialized({required User user}) = _InitializedState;
  const factory ProfileInitializationState.editedProfileSuccessfully({required User user}) = _EditedProfileSuccessfullyState;
  const factory ProfileInitializationState.needsRegistration({required String userUid}) = _NeedsRegistrationState;
  const factory ProfileInitializationState.error({required Failure error}) = _ErrorState;
}
