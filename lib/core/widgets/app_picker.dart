import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/theme/gradients.dart';
import 'package:allxclusive/core/utills/countries.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AppPicker extends StatelessWidget {
  final String? selectedItem;
  final String hint;
  final List<String> items;
  final Function(String?) onChanged;
  const AppPicker({required this.selectedItem, required this.items, required this.onChanged, required this.hint,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          canvasColor: KColors.bgColor
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: KGradient.authFieldGradient,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(14)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                isExpanded: true,
                hint: Text(hint, style: TextStyle(color: KColors.lightGrey, fontSize: 14),),
                value: selectedItem,
                items: List.generate(
                    items.length, (index) => DropdownMenuItem(
                    value: items[index],
                    child: Row(
                      children: [
                        Text(items[index], overflow: TextOverflow.fade, style: TextStyle(color: KColors.textColor),),
                      ],))), onChanged: onChanged),
          ),
        ),
      ),
    );
  }
}
