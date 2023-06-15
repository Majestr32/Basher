import 'dart:developer';

import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/validators/validators.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:allxclusive/features/change_password/change_password/data/data_sources/remote/change_password_service_impl.dart';
import 'package:allxclusive/features/change_password/change_password/data/repositories/change_password_repository_impl.dart';
import 'package:allxclusive/features/change_password/change_password/domain/use_cases/change_password.dart';
import 'package:allxclusive/features/change_password/change_password/presentation/blocs/change_password_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _repeatNewPasswordController = TextEditingController();

  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureRepeatNewPassword = true;

  String? _oldPasswordError;
  String? _newPasswordError;
  String? _repeatNewPasswordError;

  final _changePasswordRepository = ChangePasswordRepositoryImpl(changePasswordService: ChangePasswordServiceImpl(auth: FirebaseAuth.instance));
  late final _changePasswordBloc = ChangePasswordBloc(changePasswordCase: ChangePassword(changePasswordRepository: _changePasswordRepository));

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc,ChangePasswordState>(
      bloc: _changePasswordBloc,
      listener: (context,state){
        state.maybeMap(
            success: (_){
              AppToast.instance.showSuccess(context, 'Changed password');
              context.pop();
            },
            error: (state){
              AppToast.instance.showError(context, state.error.message);
            },
            orElse: (){});
      },
      child: Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackArrow(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(height: 35,),
                    Text('Change password', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: KColors.textColor),),
                    Spacer(),
                    AuthTextField(
                      error: _oldPasswordError,
                      controller: _oldPasswordController,
                      icon: FontAwesomeIcons.lock,
                      onChanged: (val){
                        setState(() {
                          _oldPasswordError = validatePassword(val);
                        });
                      },
                      suffixIcon: _eye(_obscureOldPassword, (val) => setState((){_obscureOldPassword = val;})),
                      hint: 'Old password', keyboard: TextInputType.text, obscure: _obscureOldPassword,),
                    SizedBox(height: 21,),
                    AuthTextField(
                      error: _newPasswordError,
                      controller: _newPasswordController,
                      icon: FontAwesomeIcons.lock,
                      onChanged: (val){
                        setState(() {
                          _newPasswordError = validatePassword(val);
                        });
                      },
                      suffixIcon: _eye(_obscureNewPassword, (val) => setState((){
                        _obscureNewPassword = val;})),
                      hint: 'New password', keyboard: TextInputType.text, obscure: _obscureNewPassword,),
                    SizedBox(height: 21,),
                    AuthTextField(
                      error: _repeatNewPasswordError,
                      controller: _repeatNewPasswordController,
                      icon: FontAwesomeIcons.lock,
                      onChanged: (val){
                        setState(() {
                          _repeatNewPasswordError = _validateConfirmPassword(_newPasswordController.text, val);
                        });
                      },
                      suffixIcon: _eye(_obscureRepeatNewPassword, (val) => setState((){_obscureRepeatNewPassword = val;})),
                      hint: 'Confirm password', keyboard: TextInputType.text, obscure: _obscureRepeatNewPassword,),
                    Spacer(),
                    AppButton(text: 'Change', onPressed: (){
                      final newPassword = _newPasswordController.text;
                      final oldPassword = _oldPasswordController.text;
                      final repeatPassword = _repeatNewPasswordController.text;

                      _oldPasswordError = validatePassword(oldPassword);
                      _newPasswordError = validatePassword(newPassword);
                      _repeatNewPasswordError = _validateConfirmPassword(newPassword, repeatPassword);
                      setState(() {});
                      if([_oldPasswordError,_newPasswordError,_repeatNewPasswordError].any((val) => val != null)){
                        return;
                      }

                      _changePasswordBloc.add(ChangePasswordEvent.changePassword(oldPassword: oldPassword, newPassword: newPassword));
                    }),
                    SizedBox(height: 40,)
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String? _validateConfirmPassword(String oldPassword, String repeatPassword) =>
    oldPassword != repeatPassword ? 'Confirm password doesn`t match new password' : null;

  Widget _eye(bool enabled, Function(bool) onChanged){
    return GestureDetector(
        onTap: () => onChanged.call(!enabled),
        child: Icon(enabled ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, color: KColors.lightGrey, size: 17,));
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _repeatNewPasswordController.dispose();
    super.dispose();
  }
}
