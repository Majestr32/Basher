import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/edit_user.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/save_user.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/set_user_mode.dart';
import 'package:allxclusive/features/verify_phone/presentation/blocs/verify_phone_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/user/user.dart';
import '../../../../auth/presentation/blocs/auth_bloc.dart';
import '../../../domain/use_cases/get_user_by_id.dart';

part 'profile_initialization_event.dart';
part 'profile_initialization_state.dart';
part 'profile_initialization_bloc.freezed.dart';

class ProfileInitializationBloc extends Bloc<ProfileInitializationEvent, ProfileInitializationState> {
  final GetUserById _getUserByIdCase;
  final SaveUser _saveUserCase;
  final EditUser _editUserCase;
  final SetUserMode _setUserModeCase;
  late final StreamSubscription _verifyPhoneSubscription;

  ProfileInitializationBloc({
    required GetUserById getUserByIdCase,
    required SaveUser saveUserCase,
    required EditUser editUserCase,
    required SetUserMode setUserModeCase,
    required AuthBloc authBloc
}) :
      _saveUserCase = saveUserCase,
      _editUserCase = editUserCase,
      _getUserByIdCase = getUserByIdCase,
        _setUserModeCase = setUserModeCase,
  super(const ProfileInitializationState.initial()) {
    _verifyPhoneSubscription = authBloc.stream.listen((event) {
      event.maybeMap(
          authenticated: (state){
            add(ProfileInitializationEvent.fetchUserRegistration(uid: state.user.uid));
          },
          unauthenticated: (_){
            add(const ProfileInitializationEvent.resetUser());
          },
          orElse: (){});
    });
    on<ProfileInitializationEvent>(_mapProfileInitializationToState);
  }

  Future<void> _mapProfileInitializationToState(ProfileInitializationEvent event, Emitter<ProfileInitializationState> emit) => event.map(
    fetchUserRegistration: (e) => _fetchUserRegistration(e,emit),
    registerUser: (e) => _registerUser(e, emit),
    resetUser: (e) => _resetUser(e,emit),
    editUser: (e) => _editUser(e, emit),
    setUserMode: (e) => _setUserMode(e, emit)
  );

  Future<void> _resetUser(_ResetUserEvent event, Emitter<ProfileInitializationState> emit) async{
    emit(const ProfileInitializationState.initial());
  }

  Future<void> _fetchUserRegistration(_FetchUserRegistrationEvent event, Emitter<ProfileInitializationState> emit) async{
    final failureOrUser = await _getUserByIdCase.execute(GetUserByIdParams(uid: event.uid));
    failureOrUser.fold((l){
      emit(ProfileInitializationState.needsRegistration(userUid: event.uid));
    }, (r){
      emit(ProfileInitializationState.initialized(user: r));
    });
    return;
  }

  Future<void> _setUserMode(_SetUserModeEvent event, Emitter<ProfileInitializationState> emit) async{
    final failure = await _setUserModeCase.execute(SetUserModeParams(uid: event.uid, role: event.role));
    if(failure != null){
      emit(ProfileInitializationState.error(error: failure));
    }else{
      emit(ProfileInitializationState.initialized(user: state.user!.copyWith.call(role: event.role)));
    }
  }

  Future<void> _registerUser(_RegisterUserEvent event, Emitter<ProfileInitializationState> emit) async{
    final previousState = state;
    final failureOrUser = await _saveUserCase.execute(SaveUserParams(user: event.user));
    failureOrUser.fold((l){
      emit(ProfileInitializationState.error(error: l));
      emit(previousState);
    }, (r){
      emit(ProfileInitializationState.initialized(user: r));
    });
  }

  Future<void> _editUser(_EditUserEvent event, Emitter<ProfileInitializationState> emit) async{
    final previousState = state;
    final failureOrUser = await _editUserCase.execute(EditUserParams(user: event.user, imgToUpdate: event.imgToUpdate));
    failureOrUser.fold((l){
      emit(ProfileInitializationState.error(error: l));
      emit(previousState);
    }, (r){
      emit(ProfileInitializationState.initialized(user: r));
    });
  }

  @override
  Future<void> close() {
    _verifyPhoneSubscription.cancel();
    return super.close();
  }

}
