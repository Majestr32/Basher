import 'package:flutter/material.dart';

import '../../shared/data/models/remote/event_model/event_model.dart';
import '../../shared/domain/entities/event/event.dart';
import '../theme/colors.dart';

class EventStatusWidget extends StatelessWidget {
  final EventStatus status;
  const EventStatusWidget({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 4, backgroundColor: status.color,),
        SizedBox(width: 4,),
        Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(status.name, style: TextStyle(color: status.color, fontSize: 12, fontWeight: FontWeight.w500),))
      ],
    );
  }
}
