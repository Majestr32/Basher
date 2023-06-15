import 'package:allxclusive/core/theme/gradients.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class Bg extends StatelessWidget {
  const Bg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: KColors.bgColor,
    );
  }
}
