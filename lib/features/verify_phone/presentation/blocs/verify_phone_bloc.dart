import 'dart:async';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:allxclusive/features/verify_phone/domain/use_cases/is_phone_number_set.dart';
import 'package:allxclusive/features/verify_phone/domain/use_cases/verify_sms_code.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/send_verification_phone_number_request.dart';

part 'verify_phone_event.dart';
part 'verify_phone_state.dart';
part 'verify_phone_bloc.freezed.dart';

class VerifyPhoneBloc extends Bloc<VerifyPhoneEvent, VerifyPhoneState> {
  final VerifySmsCode _verifySmsCodeCase;
  final SendVerificationPhoneNumberRequest _sendVerificationPhoneNumberRequestCase;
  final IsPhoneNumberSet _isPhoneNumberSetCase;
  late final StreamSubscription _authSubscription;
  VerifyPhoneBloc({
    required VerifySmsCode verifySmsCodeCase,
    required ProfileInitializationBloc profileInitializationBloc,
    required SendVerificationPhoneNumberRequest sendVerificationPhoneNumberRequestCase,
    required IsPhoneNumberSet isPhoneNumberSetCase,
  }) :  _verifySmsCodeCase = verifySmsCodeCase,
        _isPhoneNumberSetCase = isPhoneNumberSetCase,
        _sendVerificationPhoneNumberRequestCase = sendVerificationPhoneNumberRequestCase,
        super(const VerifyPhoneState.initial()) {
    on<VerifyPhoneEvent>(_mapEventToState);
    _authSubscription = profileInitializationBloc.stream.listen((state) {
      state.maybeMap(
          initialized: (state) => add(VerifyPhoneEvent.checkIfNeedPhoneVerification(userUid: state.user.uid)),
          initial: (state) => add(VerifyPhoneEvent.reset()),
          orElse: (){});
    });
  }

  Future<void> _mapEventToState(VerifyPhoneEvent event, Emitter<VerifyPhoneState> emit) => event.map(
    checkIfNeedPhoneVerification: (e) => _checkIfNeedPhoneVerification(e, emit),
    enterCode: (e) => _enterCode(e, emit),
    enterPhoneNumber: (e) => _enterPhoneNumber(e, emit),
    reset: (e) => _reset(e, emit),
    successfullySentCode: (e) => _successfullySentCode(e,emit),
    failSentCode: (e) => _failSentCode(e, emit),
    backToPhoneNumberEntering: (e) => _backToPhoneNumberEntering(e, emit)
  );

  Future<void> _backToPhoneNumberEntering(_BackToPhoneNumberEnteringEvent event, Emitter<VerifyPhoneState> emit) async{
    emit(VerifyPhoneState.needsPhoneVerification());
  }

  Future<void> _successfullySentCode(_SuccessfullySentCodeEvent event, Emitter<VerifyPhoneState> emit) async{
    emit(VerifyPhoneState.codeSent(verificationId: event.verificationId, phone: event.phone));
  }

  Future<void> _failSentCode(_FailSentCodeEvent event, Emitter<VerifyPhoneState> emit) async{
    emit(VerifyPhoneState.failedToSendCode(failure: event.failure));
    emit(VerifyPhoneState.needsPhoneVerification());
  }

  Future<void> _checkIfNeedPhoneVerification(_CheckIfNeedPhoneVerificationEvent event, Emitter<VerifyPhoneState> emit) async{
    final failureOrPhoneIsSet = await _isPhoneNumberSetCase.execute(IsPhoneNumberSetParams(userUid: event.userUid));
    failureOrPhoneIsSet.fold((l){
      emit(VerifyPhoneState.initial());
    }, (phoneIsSet){
      if(phoneIsSet){
        emit(VerifyPhoneState.passed());
      }else{
        emit(VerifyPhoneState.needsPhoneVerification());
      }
    });
  }

  Future<void> _enterCode(_EnterCodeEvent event, Emitter<VerifyPhoneState> emit) async{
    final previousState = state;
    final failure = await _verifySmsCodeCase.execute(VerifySmsCodeParams(phoneNumber: state.phone!, sms: event.sms, verificationId: state.verificationId!));
    if(failure != null){
      emit(VerifyPhoneState.wrongCode(failure: failure));
      emit(previousState);
    }else{
      emit(VerifyPhoneState.passed());
    }
  }

  Future<void> _enterPhoneNumber(_EnterPhoneNumberEvent event, Emitter<VerifyPhoneState> emit) async{
    _sendVerificationPhoneNumberRequestCase.execute(SendVerificationPhoneNumberRequestParams(phoneNumber: event.phone, onSuccess: (verificationId) async{
      add(VerifyPhoneEvent.successfullySentCode(verificationId: verificationId, phone: event.phone));
    }, onFail: (f){
      add(VerifyPhoneEvent.failSentCode(failure: f));
    }));
  }

  Future<void> _reset(_ResetEvent event, Emitter<VerifyPhoneState> emit) async{
    emit(VerifyPhoneState.initial());
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }


}
