import 'package:flutter/material.dart';

class GradientIconHolder extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget child;
  const GradientIconHolder({Key? key, this.width, this.height, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment(
            -0.1,
            -0.8
          ),
          end: Alignment(
              0.3,
              1
          ),
          colors: [
            Color(0xFF5E5CE6),
            Color(0xFF80499A)
          ]
        )
      ),
      child: child,
    );
  }
}
