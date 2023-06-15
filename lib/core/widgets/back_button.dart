import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BackArrow extends StatelessWidget {
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final Color? fillColor;
  final bool? inverseColor;
  final String? title;
  const BackArrow({Key? key, this.onTap, this.padding, this.title, this.inverseColor, this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onTap == null){
          context.pop();
        }else{
          onTap?.call();
        }
      },
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: padding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Stack(
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: fillColor,
                    border: Border.all(
                      color: fillColor ?? KColors.textColor,
                    )
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(FontAwesomeIcons.arrowLeftLong, color: (inverseColor ?? false) ? KColors.bgColor : KColors.textColor, size: 14,))),
              title == null ? SizedBox.shrink() : SizedBox(
                  height: 36,
                  child: Center(child: Text(title!, style: TextStyle(fontSize: 18, color: KColors.textColor, fontWeight: FontWeight.bold),),))
            ],
          ),
        ),
      ),
    );
  }
}
