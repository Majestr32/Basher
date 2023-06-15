import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/gradients.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final bool obscure;
  final Widget? suffixIcon;
  final String? error;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool multiline;
  final String? autofillHint;
  final TextInputType keyboard;

  const AuthTextField({Key? key, required this.hint, this.icon, this.obscure = false, this.suffixIcon, this.error, this.controller, this.onChanged, this.multiline = false, required this.keyboard, this.autofillHint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscure,
        autofillHints: autofillHint == null ? null : [autofillHint!],
        maxLines: multiline ? null : 1,
        keyboardType: keyboard,
        cursorColor: KColors.mainAccent,
        style: TextStyle(fontSize: 14, color: KColors.textColor),
        decoration: InputDecoration(
          errorText: error,
          isDense: true,
          prefixIcon: icon == null ? null : Icon(icon, color: KColors.lightGrey, size: 16,),
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20
          ),
          hintText: hint,
          hintStyle: TextStyle(color: KColors.lightGrey, fontSize: 14),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: KColors.darkGrey,width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KColors.errorColor,width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KColors.errorColor,width: 2),
            borderRadius: BorderRadius.circular(16),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KColors.mainAccent,width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
        )
    );
  }
}
