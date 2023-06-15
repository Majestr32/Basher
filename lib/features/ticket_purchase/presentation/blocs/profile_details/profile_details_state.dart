part of 'profile_details_bloc.dart';

@freezed
class ProfileDetailsState with _$ProfileDetailsState {
  const ProfileDetailsState._();

  bool get isLoading => maybeMap(
      initial: (_) => true,
      orElse: () => false);

  User? get user => maybeMap(
      loaded: (state) => state.user,
      orElse: () => null);

  const factory ProfileDetailsState.initial() = _InitialState;
  const factory ProfileDetailsState.loaded({required User user}) = _LoadedState;
  const factory ProfileDetailsState.error({required Failure failure}) = _ErrorState;
}
