import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';

class HeaderWithText extends StatelessWidget {
  final String text;
  const HeaderWithText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74 + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF5E5CE6).withOpacity(0.8), Color(0xFFA95CE6).withOpacity(0.85), Color(0xFF5E5CE6).withOpacity(0.8)]
        )
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
          child: Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: KColors.white),),
        ),
      ),
    );
  }
}
