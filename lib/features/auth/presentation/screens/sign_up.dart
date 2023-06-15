import 'package:allxclusive/core/validators/validators.dart';
import 'package:allxclusive/features/verify_phone/presentation/blocs/verify_phone_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../blocs/auth_bloc.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/bg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showEye = true;
  bool _showEyeConfirm = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyPhoneBloc, VerifyPhoneState>(
  listener: (context, state) {
    state.maybeMap(
        needsPhoneVerification: (state) => context.go(RouteNames.enterPhone),
        orElse: (){});
  },
  child: BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.maybeWhen(
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 30
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Text('Register', style: TextStyle(fontSize: 32, color: KColors.textColor),),
                    SizedBox(height: 60,),
                    AuthTextField(
                      keyboard: TextInputType.emailAddress,
                      controller: _emailController,
                      onChanged: (val){
                        setState(() {
                          _emailError = validateEmail(val);
                        });
                      },
                      hint: 'Email', icon: FontAwesomeIcons.solidEnvelope, error: _emailError,),
                    SizedBox(height: 20,),
                    AuthTextField(
                      keyboard: TextInputType.text,
                      controller: _passwordController,
                      onChanged: (val){
                        setState(() {
                          _passwordError = validatePassword(val);
                        });
                      },
                      hint: 'Password', icon: FontAwesomeIcons.lock, obscure: _showEye, error: _passwordError, suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _showEye = !_showEye;
                          });
                        },
                        child: Icon(_showEye ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, color: KColors.lightGrey, size: 17,)),),
                    SizedBox(height: 20,),
                    AuthTextField(
                      keyboard: TextInputType.text,
                      controller: _confirmPasswordController,
                      icon: FontAwesomeIcons.lock,
                      suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              _showEyeConfirm = !_showEyeConfirm;
                            });
                          },
                          child: Icon(_showEyeConfirm ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, color: KColors.lightGrey, size: 17,)),
                      onChanged: (val){
                        setState(() {
                          _confirmPasswordError = _validateConfirmPassword(val, _passwordController.text);
                        });
                      },
                      hint: 'Confirm password', obscure: _showEyeConfirm, error: _confirmPasswordError,),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have an account?', style: TextStyle(color: KColors.textColor, fontSize: 12),),
                        TextButton(child: Text('Sign in', style: TextStyle(color: KColors.mainAccent, fontSize: 12),), onPressed: (){
                          context.go(RouteNames.signIn);
                        },),
                      ],
                    ),
                    SizedBox(height: 5,),
                    AppButton(text: 'Sign up', onPressed: (){
                      setState((){
                        _emailError = validateEmail(_emailController.text);
                        _passwordError = validatePassword(_passwordController.text);
                        _confirmPasswordError = _validateConfirmPassword(_confirmPasswordController.text,_passwordController.text);
                      });

                      //Has error
                      if([_emailError,_passwordError,_confirmPasswordError].any((e) => e != null)){
                        return;
                      }

                      context.read<AuthBloc>().add(AuthEvent.signUpWithEmailAndPassword(email: _emailController.text, password: _passwordController.text));
                    },),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
);
  }

  String? _validateConfirmPassword(String confirmPassword, String password) {
    if(confirmPassword.isEmpty){
      return 'Confirm password can`t be empty';
    }else if(confirmPassword != password){
      return 'Confirm password should match to password';
    }else{
      return null;
    }
  }
}
