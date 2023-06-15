import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/core/validators/validators.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/features/verify_phone/presentation/blocs/verify_phone_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../blocs/auth_bloc.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/bg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _showEye = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                _passwordError = e.message;
              });
            },
            loading: (){
              LoadingOverlay.of(context).show();
            },
            orElse: (){});
        state.maybeWhen(
            loading: (){

            },
            orElse: (){
              LoadingOverlay.of(context).hide();
        });
      },
      child: Scaffold(
        body: Stack(
          children: [
            const Bg(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60,),
                    Text('Sign in', style: TextStyle(fontSize: 32, color: KColors.textColor),),
                    const SizedBox(height: 60,),
                    AuthTextField(
                      keyboard: TextInputType.emailAddress,
                      controller: _emailController,
                      autofillHint: AutofillHints.username,
                      error: _emailError,
                      onChanged: (val){
                        setState(() {
                          _emailError = validateEmail(_emailController.text);
                        });
                      },
                      hint: 'Email', icon: FontAwesomeIcons.solidEnvelope,),
                    const SizedBox(height: 20,),
                    AuthTextField(
                      autofillHint: AutofillHints.password,
                      keyboard: TextInputType.text,
                      controller: _passwordController,
                      error: _passwordError,
                      onChanged: (val){
                        setState(() {
                          _passwordError = validatePassword(_passwordController.text);
                        });
                      },
                      hint: 'Password', icon: FontAwesomeIcons.lock, obscure: _showEye, suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _showEye = !_showEye;
                          });
                        },
                        child: Icon(_showEye ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, color: KColors.lightGrey, size: 17,)),),
                    const SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: (){
                              context.push(RouteNames.forgotPassword);
                            },
                            child: Text('Forgot password?', style: TextStyle(color: KColors.textColor),))),
                    const SizedBox(height: 40,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Or Sign in with', style: TextStyle(color: KColors.textColor),)),
                    const SizedBox(height: 10,),
                    _alternativeSignIn(FontAwesomeIcons.google, 'Sign in with Google', (){
                      context.read<AuthBloc>().add(const AuthEvent.signInWithGoogle());
                    }),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don`t have an account?', style: TextStyle(color: KColors.textColor, fontSize: 12),),
                        TextButton(child: Text('Sign up', style: TextStyle(color: KColors.mainAccent, fontSize: 12),), onPressed: (){
                          context.go(RouteNames.signUp);
                        },),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    AppButton(text: 'Sign in', onPressed: () async{
                      setState((){
                        _emailError = validateEmail(_emailController.text);
                        _passwordError = validatePassword(_passwordController.text);
                      });

                      //Has error
                      if([_emailError,_passwordError].any((e) => e != null)){
                        return;
                      }

                      TextInput.finishAutofillContext();
                      context.read<AuthBloc>().add(AuthEvent.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text));
                    },),
                    const SizedBox(height: 30,)
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(icon, color: KColors.bgColor,)),
              Center(
                child: Text(text, style: TextStyle(color: KColors.bgColor, fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
