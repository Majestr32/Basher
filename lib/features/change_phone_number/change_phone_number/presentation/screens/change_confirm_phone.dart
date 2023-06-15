import 'package:allxclusive/features/change_phone_number/change_phone_number/data/data_sources/remote/change_phone_number_service_impl.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/data/repositories/change_phone_number_repository_impl.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/repositories/change_phone_number_repository_contract.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/use_cases/confirm_change_phone_number.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/domain/use_cases/send_change_phone_number_request.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/presentation/blocs/change_phone_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/router.dart';
import '../../../../../core/utills/toasts.dart';
import '../../../../../core/widgets/confirm_phone.dart';
import '../../../../auth/presentation/blocs/auth_bloc.dart';

class ChangeConfirmPhone extends StatefulWidget {
  const ChangeConfirmPhone({Key? key}) : super(key: key);

  @override
  State<ChangeConfirmPhone> createState() => _ChangeConfirmPhoneState();
}

class _ChangeConfirmPhoneState extends State<ChangeConfirmPhone> {
  final ChangePhoneNumberRepository _changePhoneNumberRepository = ChangePhoneNumberRepositoryImpl(changePhoneNumberService: ChangePhoneNumberServiceImpl(auth: FirebaseAuth.instance, db: FirebaseFirestore.instance));
  late final ChangePhoneBloc _changePhoneBloc = ChangePhoneBloc(confirmChangePhoneNumberCase: ConfirmChangePhoneNumber(changePhoneNumberRepository: _changePhoneNumberRepository), sendChangePhoneNumberRequestCase: SendChangePhoneNumberRequest(changePhoneNumberRepository: _changePhoneNumberRepository));
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePhoneBloc,ChangePhoneState>(
      bloc: _changePhoneBloc,
      listener: (context, state) {
        state.maybeMap(
            codeSent: (state){
              if(ModalRoute.of(context)!.isCurrent){
                context.push(RouteNames.changeVerifyPhone, extra: _changePhoneBloc);
              }
            },
            failedToSendCode: (state){
              if(ModalRoute.of(context)!.isCurrent){
                AppToast.instance.showError(context, state.failure.message);
              }
            },
            orElse: (){});
      },
      child: ConfirmPhone(
        backArrowText: 'Back',
        onBackArrowTap: () => context.pop(),
        onSendTap: () => _changePhoneBloc.add(ChangePhoneEvent.enterPhoneNumber(phone: phoneNumber)),
        onInputChanged: (val) => setState((){phoneNumber = val.phoneNumber!;}),
        title: 'Change phone',
        onWillPop: () async{
          return true;
        },
        subtitle: 'Enter phone number which will be associated with your account, this step will help us to easier find friends for you',
      ),
    );
  }
}
