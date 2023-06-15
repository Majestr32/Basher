import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/gradient_icon_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/app_button.dart';
import '../blocs/auth_bloc.dart';
import '../widgets/bg.dart';

class ForgotPasswordSent extends StatelessWidget {
  const ForgotPasswordSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.maybeWhen(
            unauthenticated: (){
              context.go(RouteNames.signIn);
            },
            orElse: (){});
      },
      child: Scaffold(
        body: Stack(
          children: [
            Bg(),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientIconHolder(
                      width: 128,
                      height: 128,
                      child: Icon(FontAwesomeIcons.envelopeOpenText, color: KColors.textColor, size: 46,),
                    ),
                    SizedBox(height: 15,),
                    Text('Check your email', style: TextStyle(fontSize: 32,color: KColors.textColor),),
                    SizedBox(height: 8,),
                    Text('We have sent a password recovery link to your email', textAlign: TextAlign.center, style: TextStyle(fontSize: 14,color: KColors.textColor),),
                    SizedBox(height: 25,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: AppButton(
                        text: 'Continue',
                        onPressed: (){
                          context.read<AuthBloc>().add(AuthEvent.backToSignIn());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
