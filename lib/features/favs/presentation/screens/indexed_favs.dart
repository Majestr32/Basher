import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/header_with_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/empty_data.dart';

class IndexedFavs extends StatelessWidget {
  const IndexedFavs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: _emptyFavs()
    );
  }

  Widget _emptyFavs(){
    return Column(
      children: [
        HeaderWithText(text: 'Favourite'),
        Expanded(child: EmptyData(icon: FontAwesomeIcons.solidFile, text: 'No favourites have been found')),
      ],
    );
  }
}
