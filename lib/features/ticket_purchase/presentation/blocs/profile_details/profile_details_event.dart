part of 'profile_details_bloc.dart';

@freezed
class ProfileDetailsEvent with _$ProfileDetailsEvent {
  const factory ProfileDetailsEvent.fetchUserDetails({required String userUid}) = _FetchUserDetailsEvent;
}
