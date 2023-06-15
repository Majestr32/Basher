import 'dart:math';

import 'package:flutter/cupertino.dart';

class KGradient{
  static LinearGradient authGradient = const LinearGradient(
    begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0,
        1
      ],
      colors: [
    Color(0xFF000000),
    Color(0xFF1F2133)
  ]);

  static RadialGradient authFieldGradient = RadialGradient(
      radius: 5,
      focal: Alignment(-0.7,-0.6),
      center: Alignment.center,
      stops: [
        0,
        1
      ],
      colors: [
        Color(0xFF5E5CE6),
        Color(0xFF5E5CE6).withOpacity(0.0)
      ]);

  static RadialGradient authFieldSelectedGradient = RadialGradient(
      radius: 9,
      focal: Alignment(-0.7,-0.6),
      center: Alignment.center,
      stops: [
        0,
        1
      ],
      colors: [
        Color(0xFF5E5CE6),
        Color(0xFF5E5CE6).withOpacity(0.0)
      ]);
}