import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/domain/entities/user/user.dart';
import '../theme/colors.dart';

class BigEventTile extends StatelessWidget {
  final String title;
  final String imgPath;
  final DateTime date;
  final String location;
  final int membersCount;
  final VoidCallback onTap;
  final String minPrice;
  const BigEventTile({Key? key, required this.title, required this.membersCount, required this.imgPath, required this.date, required this.location, required this.onTap, required this.minPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 210,
              child: ShimmerImage(
                radius: 8,
                url: imgPath,
              ),
            ),
            SizedBox(height: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Text(title, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: KColors.textColor), maxLines: 3,)),
                    Container(
                      width: 80,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.solidCalendarDays, size: 12, color: KColors.mainAccent,),
                              SizedBox(width: 10,),
                              Text(date.formattedTexted, overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.locationDot, size: 12, color: KColors.mainAccent,),
                              SizedBox(width: 10,),
                              Text('1.5 km away', overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(height: 30, width: 1, color: KColors.lightGrey,),
                    SizedBox(width: 25,),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.users, size: 12, color: KColors.mainAccent,),
                              SizedBox(width: 10,),
                              Text(membersCount.toString(), overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.moneyBill, size: 12, color: KColors.mainAccent,),
                              SizedBox(width: 10,),
                              Text('min. $minPrice', overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50,)
          ],
        ),
      ),
    );
  }
}