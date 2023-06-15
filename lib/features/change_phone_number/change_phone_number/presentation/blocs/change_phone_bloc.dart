import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../domain/use_cases/confirm_change_phone_number.dart';
import '../../domain/use_cases/send_change_phone_number_request.dart';

part 'change_phone_event.dart';
part 'change_phone_state.dart';
part 'change_phone_bloc.freezed.dart';

class ChangePhoneBloc extends Bloc<ChangePhoneEvent, ChangePhoneState> {

  final ConfirmChangePhoneNumber _confirmChangePhoneNumberCase;
  final SendChangePhoneNumberRequest _sendChangePhoneNumberRequestCase;

  ChangePhoneBloc({required ConfirmChangePhoneNumber confirmChangePhoneNumberCase, required SendChangePhoneNumberRequest sendChangePhoneNumberRequestCase}) :
        _confirmChangePhoneNumberCase = confirmChangePhoneNumberCase,
        _sendChangePhoneNumberRequestCase = sendChangePhoneNumberRequestCase,
        super(const ChangePhoneState.initial()) {
    on<ChangePhoneEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(ChangePhoneEvent event, Emitter<ChangePhoneState> emit) => event.map(
      enterPhoneNumber: (e) => _enterPhoneNumber(e,emit),
      enterCode: (e) => _enterCode(e,emit),
      successfullySentCode: (e) => _successfullySentCode(e,emit),
      failSentCode: (e) => _failSentCode(e,emit),
      backToPhoneNumberEntering: (e) => _backToPhoneNumberEntering(e, emit));

  Future<void> _enterPhoneNumber(_EnterPhoneNumberEvent event, Emitter<ChangePhoneState> emit) async{
    _sendChangePhoneNumberRequestCase.execute(SendChangePhoneNumberRequestParams(phoneNumber: event.phone, onSuccess: (verificationId) async{
      add(ChangePhoneEvent.successfullySentCode(verificationId: verificationId, phone: event.phone));
    }, onFail: (f){
      add(ChangePhoneEvent.failSentCode(failure: f));
    }));
  }

  Future<void> _enterCode(_EnterCodeEvent event, Emitter<ChangePhoneState> emit) async{
    final previousState = state;
    final failure = await _confirmChangePhoneNumberCase.execute(ConfirmChangePhoneNumberParams(phoneNumber: state.phone!, sms: event.sms, verificationId: state.verificationId!));
    if(failure != null){
      emit(ChangePhoneState.wrongCode(failure: failure));
      emit(previousState);
    }else{
      emit(const ChangePhoneState.passed());
    }
  }

  Future<void> _backToPhoneNumberEntering(_BackToPhoneNumberEnteringEvent event, Emitter<ChangePhoneState> emit) async{
    emit(ChangePhoneState.initial());
  }

  Future<void> _successfullySentCode(_SuccessfullySentCodeEvent event, Emitter<ChangePhoneState> emit) async{
    emit(ChangePhoneState.codeSent(verificationId: event.verificationId, phone: event.phone));
  }

  Future<void> _failSentCode(_FailSentCodeEvent event, Emitter<ChangePhoneState> emit) async{
    emit(ChangePhoneState.failedToSendCode(failure: event.failure));
    emit(const ChangePhoneState.initial());
  }
}
