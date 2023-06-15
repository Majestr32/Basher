import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/theme/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../shared/domain/entities/social_link/social_link.dart';

class SocialPicker extends StatelessWidget {
  final String? selectedSocial;
  final Function(String?) onChanged;
  SocialPicker({required this.selectedSocial, required this.onChanged,Key? key}) : super(key: key);

  final _socials = SocialLinks.values;

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
                hint: Text('Select country', style: TextStyle(color: KColors.lightGrey, fontSize: 14),),
                value: selectedSocial,
                items: List.generate(
                    _socials.length, (index) => DropdownMenuItem(
                    value: _socials[index].name,
                    child: Row(
                      children: [
                        SvgPicture.asset(_socials[index].assetImg),
                        SizedBox(width: 5,),
                        Text(_socials[index].name, overflow: TextOverflow.fade, style: TextStyle(color: KColors.textColor),),
                      ],))), onChanged: onChanged),
          ),
        ),
      ),
    );
  }
}
