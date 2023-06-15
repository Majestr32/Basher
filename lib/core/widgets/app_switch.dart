import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  final bool active;
  final double width;
  final double height;
  final Function(bool) onChanged;
  const AppSwitch({Key? key, required this.active, required this.onChanged, this.width = 46, this.height = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChanged.call(!active);
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: active ? KColors.mainAccent.withOpacity(0.3) : KColors.lightGrey
        ),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 250),
          alignment: Alignment(active ? 0.7 : -0.7, 0),
          child: CircleAvatar(
            radius: height / 2 - 3,
            backgroundColor: active ? KColors.mainAccent : Color(0xFFD9D9D9),
          ),
        ),
      ),
    );
  }
}
