import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp dateToTimestamp(DateTime date){
  return Timestamp.fromMillisecondsSinceEpoch(date.millisecond);
}

DateTime timestampToDateTime(Timestamp stamp){
  return stamp.toDate();
}