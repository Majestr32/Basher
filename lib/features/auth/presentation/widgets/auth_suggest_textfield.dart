import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/gradients.dart';

class AuthSuggestTextField extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? autofillHint;
  final TextInputType keyboard;
  final GlobalKey<AutoCompleteTextFieldState<String>> autoFillKey;

  const AuthSuggestTextField({Key? key, required this.hint, this.icon, this.suffixIcon, this.controller, this.onChanged, required this.keyboard, this.autofillHint, required this.autoFillKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoCompleteTextField<String>(
      key: autoFillKey,
        itemFilter: (item,q) => true,
        itemSorter: (a,b) => a.compareTo(b),
        itemSubmitted: (a) => onChanged?.call(a),
        suggestions: [],
        textChanged: onChanged,
        cursorColor: KColors.mainAccent,
        clearOnSubmit: false,
        controller: controller,
        itemBuilder: (context, address){
          return Container(
              color: KColors.bgColor,
              height: 45,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(address, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w600, color: KColors.textColor),)),
              ));
        },
        keyboardType: keyboard,
        style: TextStyle(fontSize: 14, color: KColors.textColor),
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: icon == null ? null : Icon(icon, color: KColors.lightGrey, size: 16,),
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20
          ),
          hintText: hint,
          hintStyle: TextStyle(color: KColors.lightGrey, fontSize: 14),
          border: GradientOutlineInputBorder(
            width: 2,
            borderRadius: BorderRadius.circular(16),
            gradient: KGradient.authFieldGradient,
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
    );
  }
}
