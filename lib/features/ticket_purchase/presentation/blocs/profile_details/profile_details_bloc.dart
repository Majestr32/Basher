import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/use_cases/get_user_by_id.dart';

part 'profile_details_event.dart';
part 'profile_details_state.dart';
part 'profile_details_bloc.freezed.dart';

class ProfileDetailsBloc extends Bloc<ProfileDetailsEvent, ProfileDetailsState> {
  final GetUserById _getUserByIdCase;
  ProfileDetailsBloc({
    required GetUserById getUserByIdCase
  }) : _getUserByIdCase = getUserByIdCase,
        super(const ProfileDetailsState.initial()) {
    on<ProfileDetailsEvent>(_mapProfileDetailsToState);
  }

  Future _mapProfileDetailsToState(ProfileDetailsEvent event, Emitter<ProfileDetailsState> emit) => event.map(
      fetchUserDetails: (e) => _fetchUserDetails(e,emit));

  Future<void> _fetchUserDetails(_FetchUserDetailsEvent event, Emitter<ProfileDetailsState> emit) async{
    final failureOrUser = await _getUserByIdCase.execute(GetUserByIdParams(userUid: event.userUid));
    failureOrUser.fold((l){
      emit(ProfileDetailsState.error(failure: l));
    }, (r){
      emit(ProfileDetailsState.loaded(user: r));
    });
  }
}
