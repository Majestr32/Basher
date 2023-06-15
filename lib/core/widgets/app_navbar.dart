import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppNavbar extends StatelessWidget {
  final int selected;
  final Function(int) onSelectChanged;
  const AppNavbar({Key? key, required this.selected, required this.onSelectChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: KColors.white,
        boxShadow: [
          BoxShadow(color: KColors.mainAccent.withOpacity(0.15), offset: Offset(0,-5), blurRadius: 5)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          FontAwesomeIcons.house,
          FontAwesomeIcons.mapLocation,
          FontAwesomeIcons.ticket,
          FontAwesomeIcons.solidHeart,
          FontAwesomeIcons.solidUser
        ].asMap().entries.map((entry) => entry.value is Container ? Expanded(child: Container()) : Expanded(
          child: SizedBox(
            height: double.infinity,
            child: Material(
              color: KColors.white,
              child: InkWell(
                  onTap: () => onSelectChanged.call(entry.key),
                  child: Icon(entry.value as IconData, color: selected == entry.key ? KColors.mainAccent : KColors.lightGrey, size: 20,)),
            ),
          ),
        )).toList(),
      ),
    );
  }
}
