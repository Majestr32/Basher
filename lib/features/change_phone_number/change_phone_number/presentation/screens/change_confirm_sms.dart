import 'package:allxclusive/core/widgets/confirm_sms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utills/toasts.dart';
import '../blocs/change_phone_bloc.dart';

class ChangeConfirmSms extends StatelessWidget {
  const ChangeConfirmSms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePhoneBloc,ChangePhoneState>(
      listener: (context, state) {
        state.maybeMap(
            wrongCode: (state){
              AppToast.instance.showError(context, state.failure.message);
            },
            passed: (_){
              AppToast.instance.showSuccess(context, 'Phone number changed');
              context.pop();
              context.pop();
            },
            orElse: (){});
      },
      child: ConfirmSms(
          phoneNumber: context.watch<ChangePhoneBloc>().state.phone ?? '',
          onBackArrowTap: (){
        context.read<ChangePhoneBloc>().add(ChangePhoneEvent.backToPhoneNumberEntering());
        context.pop();
      }, onSmsCompleted: (val){
        context.read<ChangePhoneBloc>().add(ChangePhoneEvent.enterCode(sms: val));
      }, onWillPop: () async{
        context.read<ChangePhoneBloc>().add(ChangePhoneEvent.backToPhoneNumberEntering());
        return true;
      }),
    );
  }
}
