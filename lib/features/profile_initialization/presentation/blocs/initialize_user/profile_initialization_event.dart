part of 'profile_initialization_bloc.dart';

@freezed
class ProfileInitializationEvent with _$ProfileInitializationEvent {
  const factory ProfileInitializationEvent.fetchUserRegistration({required String uid}) = _FetchUserRegistrationEvent;
  const factory ProfileInitializationEvent.registerUser({required User user}) = _RegisterUserEvent;
  const factory ProfileInitializationEvent.setUserMode({required String uid, required Role role}) = _SetUserModeEvent;
  const factory ProfileInitializationEvent.editUser({required User user, required String? imgToUpdate}) = _EditUserEvent;
  const factory ProfileInitializationEvent.resetUser() = _ResetUserEvent;
}
