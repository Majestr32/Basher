import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/colors.dart';

class EmptyData extends StatelessWidget {
  final IconData icon;
  final String text;
  const EmptyData({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: KColors.darkGrey, size: 48,),
          SizedBox(height: 15,),
          Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.darkGrey),)
        ],
      ),
    );
  }
}
