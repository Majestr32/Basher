import 'package:allxclusive/core/extensions/date.dart';
import 'package:flutter/material.dart';

import '../../shared/data/models/remote/event_model/event_model.dart';
import '../../shared/domain/entities/event/event.dart';
import '../theme/colors.dart';
import 'event_status_widget.dart';

class EventTile extends StatelessWidget {
  final String title;
  final String imgPath;
  final EventStatus status;
  final DateTime date;
  final String location;
  final VoidCallback onTap;
  const EventTile({required this.title, required this.imgPath, required this.status, required this.date, required this.location, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.lerp(Color(0xFF9B9BA4).withOpacity(0.15), KColors.bgColor, 0.85),
            boxShadow: [
              BoxShadow(offset: Offset(3,4), blurRadius: 12, spreadRadius: 4, color: Color(0xFF5E5CE6).withOpacity(0.15), blurStyle: BlurStyle.normal)
            ]
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, right: 12),
                child: EventStatusWidget(status: status,),
              ),
            ),
            Center(
              child: SizedBox(
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: Image.network(imgPath).image,
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: KColors.textColor),),
                            Text(date.formatted, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10, color: KColors.lightGrey),),
                            Text(location, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 8, color: KColors.textColor),),
                          ],
                        ),
                      ),
                      SizedBox(width: 50,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}