import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router.dart';
import '../../../../core/utills/toasts.dart';
import '../../../../core/widgets/confirm_phone.dart';
import '../../../auth/presentation/blocs/auth_bloc.dart';
import '../blocs/verify_phone_bloc.dart';

class VerifyConfirmPhone extends StatefulWidget {
  const VerifyConfirmPhone({Key? key}) : super(key: key);

  @override
  State<VerifyConfirmPhone> createState() => _VerifyConfirmPhoneState();
}

class _VerifyConfirmPhoneState extends State<VerifyConfirmPhone> {

  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyPhoneBloc,VerifyPhoneState>(
      listener: (context, state) {
        state.maybeMap(
            codeSent: (state){
              context.push(RouteNames.verifyPhone);
            },
            failedToSendCode: (state){
              AppToast.instance.showError(context, state.failure.message);
            },
            orElse: (){});
      },
      child: ConfirmPhone(
        backArrowText: 'Logout',
        onBackArrowTap: () => context.read<AuthBloc>().add(const AuthEvent.signOut()),
        onSendTap: () => context.read<VerifyPhoneBloc>().add(VerifyPhoneEvent.enterPhoneNumber(phone: phoneNumber)),
        onInputChanged: (val) => setState((){phoneNumber = val.phoneNumber!;}),
        title: 'Verify phone',
        onWillPop: () async{
          context.read<AuthBloc>().add(const AuthEvent.signOut());
          return false;
        },
        subtitle: 'Enter phone number which will be associated with your account.',
      ),
    );
  }
}
