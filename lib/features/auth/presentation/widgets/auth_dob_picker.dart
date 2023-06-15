import 'dart:developer';

import 'package:allxclusive/core/utills/platform/platform.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/gradients.dart';

class AuthDatePicker extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final double iconSize;
  final Widget? suffixIcon;
  final String? error;
  final bool pickTime;
  final Function(DateTime) onDateSelected;
  final DateTime? initial;
  final DateTime? startDate;
  final DateTime? endDate;
  final TextEditingController? controller;
  const AuthDatePicker({Key? key, required this.hint, this.iconSize = 16, this.icon, this.suffixIcon, this.error, this.controller, required this.onDateSelected, this.initial, this.pickTime = false, this.startDate, this.endDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        final DateTime? date;
        date = pickTime ? await AppPlatformUtils.instance.showTimePicker(context, initial ?? DateTime.now().subtract(Duration(days: 50)), startDate ?? DateTime(1920), endDate ?? DateTime.now().subtract(Duration(days: 30)))
            : await AppPlatformUtils.instance.showDatePicker(context, initial ?? DateTime.now().subtract(Duration(days: 50)), startDate ?? DateTime(1920), endDate ?? DateTime.now().subtract(Duration(days: 30)));
        if(date == null){
          return;
        }
        onDateSelected.call(date);
      },
      child: TextField(
        controller: controller,
        enabled: false,
          style: TextStyle(fontSize: 14, color: KColors.textColor),
          decoration: InputDecoration(
            errorText: error,
            isDense: true,
            errorStyle: TextStyle(color: KColors.errorColor),
            prefixIcon: icon == null ? null : Icon(icon, color: KColors.lightGrey, size: iconSize,),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20
            ),
            hintText: hint,
            hintStyle: TextStyle(color: KColors.lightGrey, fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: KColors.darkGrey,
                width: 1
              )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                    color: KColors.darkGrey,
                    width: 1
                )
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                    color: KColors.darkGrey,
                    width: 1
                )
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: KColors.errorColor,width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: KColors.errorColor,width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: GradientOutlineInputBorder(
              width: 2,
              borderRadius: BorderRadius.circular(16),
              gradient: KGradient.authFieldSelectedGradient,
            ),
          )
      ),
    );
  }
}
