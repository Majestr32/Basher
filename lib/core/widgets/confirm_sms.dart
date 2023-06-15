
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/features/auth/presentation/widgets/bg.dart';
import 'package:allxclusive/features/verify_phone/presentation/blocs/verify_phone_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';

import '../theme/colors.dart';
import '../theme/gradients.dart';
import 'back_button.dart';

class ConfirmSms extends StatefulWidget {
  final VoidCallback onBackArrowTap;
  final Function(String) onSmsCompleted;
  final Future<bool> Function() onWillPop;
  final String phoneNumber;
  const ConfirmSms({Key? key, required this.onBackArrowTap, required this.onSmsCompleted, required this.onWillPop, required this.phoneNumber}) : super(key: key);

  @override
  State<ConfirmSms> createState() => _ConfirmSmsState();
}

class _ConfirmSmsState extends State<ConfirmSms> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: widget.onWillPop,
    child: Scaffold(
        body: Stack(
          children: [
            Bg(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80,),
                    Text('Code sent', style: TextStyle(fontSize: 32, color: KColors.textColor),),
                    SizedBox(height: 20,),
                    Text('We have sent confirmation code on phone number ${widget.phoneNumber}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: KColors.textColor),),
                    Spacer(),
                    VerificationCode(
                        length: 6,
                        textStyle: TextStyle(color: KColors.textColor, fontSize: 22),
                        underlineColor: Colors.transparent,
                        underlineUnfocusedColor: Colors.transparent,
                        fillColor: Color(0xFFD7D7D7),
                        cursorColor: KColors.mainAccent,
                        fullBorder: true,
                        onCompleted: widget.onSmsCompleted, onEditing: (val){

                    }),
                    Spacer(),
                    SizedBox(height: 60,)
                  ],
                ),
              ),
            ),
            SafeArea(
              child: BackArrow(onTap: widget.onBackArrowTap),
            )
          ],
        ),
      ),
  );
  }
}
