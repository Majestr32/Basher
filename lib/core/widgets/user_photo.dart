import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/colors.dart';

class UserPhoto extends StatelessWidget {
  final String? photoUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  const UserPhoto({Key? key, this.photoUrl, this.width, this.height, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: photoUrl != null ? null : Center(
        child: Icon(FontAwesomeIcons.solidUser, color: KColors.lightGrey,),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF8B8B8F).withOpacity(0.08),
          borderRadius: borderRadius == null ? null : BorderRadius.circular(borderRadius!),
          image: photoUrl == null ? null : DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(photoUrl!).image
          )
      ),
    );
  }

}
