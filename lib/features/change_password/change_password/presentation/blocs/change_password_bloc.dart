import 'package:allxclusive/core/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/change_password.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePassword _changePasswordCase;

  ChangePasswordBloc({required ChangePassword changePasswordCase}) :
        _changePasswordCase = changePasswordCase,
        super(const ChangePasswordState.initial()) {
    on<ChangePasswordEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(ChangePasswordEvent event, Emitter<ChangePasswordState> emit) =>
      event.map(changePassword: (e) => _changePassword(e, emit));

  Future<void> _changePassword(_ChangePasswordEvent event, Emitter<ChangePasswordState> emit) async{
    final failure = await _changePasswordCase.execute(ChangePasswordParams(oldPassword: event.oldPassword, newPassword: event.newPassword));
    if(failure != null){
      emit(ChangePasswordState.error(error: failure));
      emit(const ChangePasswordState.initial());
    }else{
      emit(const ChangePasswordState.success());
    }
  }
}
