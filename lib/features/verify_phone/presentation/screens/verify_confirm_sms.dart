import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utills/toasts.dart';
import '../../../../core/widgets/confirm_sms.dart';
import '../blocs/verify_phone_bloc.dart';

class VerifyConfirmSms extends StatelessWidget {
  const VerifyConfirmSms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyPhoneBloc,VerifyPhoneState>(
      listener: (context, state) {
        state.maybeMap(
            wrongCode: (state){
              AppToast.instance.showError(context, state.failure.message);
            },
            orElse: (){});
      },
      child: ConfirmSms(
          phoneNumber: context.watch<VerifyPhoneBloc>().state.phone ?? '',
          onBackArrowTap: (){
        context.read<VerifyPhoneBloc>().add(VerifyPhoneEvent.backToPhoneNumberEntering());
        context.pop();
      }, onSmsCompleted: (val){
        context.read<VerifyPhoneBloc>().add(VerifyPhoneEvent.enterCode(sms: val));
      }, onWillPop: () async{
        context.read<VerifyPhoneBloc>().add(VerifyPhoneEvent.backToPhoneNumberEntering());
        return true;
      }),
    );
  }
}
