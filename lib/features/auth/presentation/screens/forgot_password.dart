import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/theme/gradients.dart';
import 'package:allxclusive/core/validators/validators.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../blocs/auth_bloc.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/bg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();

  String? _emailError;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.maybeWhen(
          sentResetPassword: (){
            context.go(RouteNames.forgotPasswordSent);
          },
            error: (e){
              setState(() {
                _emailError = e.message;
              });
            },
            orElse: (){});
      },
      child: Scaffold(
        body: Stack(
          children: [
            Bg(),
            SafeArea(
              child: BackArrow(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 30
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Text('Forgot password', style: TextStyle(fontSize: 32, color: KColors.textColor),),
                    SizedBox(height: 10,),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('Enter the email associated with that account, we will send email with change password option.', style: TextStyle(fontSize: 14, color: KColors.textColor, fontWeight: FontWeight.w200),)),
                    SizedBox(height: 60,),
                    AuthTextField(
                      controller: _emailController,
                      keyboard: TextInputType.emailAddress,
                      error: _emailError,
                      onChanged: (val){
                        setState(() {
                          _emailError = validateEmail(_emailController.text);
                        });
                      },
                      hint: 'Email', icon: FontAwesomeIcons.solidEnvelope,),
                    Spacer(),
                    SizedBox(height: 5,),
                    AppButton(text: 'Send email', onPressed: (){
                      setState((){
                        _emailError = validateEmail(_emailController.text);
                      });

                      //Has error
                      if(_emailError != null){
                        return;
                      }

                      context.read<AuthBloc>().add(AuthEvent.resetPassword(email: _emailController.text));
                    },),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _alternativeSignIn(IconData icon, String text, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: KColors.mainAccent,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(icon, color: KColors.textColor,)),
              Center(
                child: Text(text, style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
