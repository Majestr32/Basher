
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AndroidPlatformUtils{
  AndroidPlatformUtils._internal();
  static final AndroidPlatformUtils _instance = AndroidPlatformUtils._internal();

  static AndroidPlatformUtils get instance => _instance;

  Future<bool> showAndroidConfirmationWindow(BuildContext context, String title, String content, String yes, String no) async{
    bool? chosen;
    await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              // The "Yes" button
              TextButton(
                  onPressed: () {
                    chosen = true;
                    Navigator.of(context).pop();
                  },
                  child: Text(yes)),
              TextButton(
                  onPressed: () {
                    chosen = false;
                    Navigator.of(context).pop();
                  },
                  child: Text(no))
            ],
          );
        });
    return chosen ?? false;
  }

  Future<DateTime?> showAndroidDatePicker(BuildContext context, DateTime currentDate, DateTime startDate, DateTime endDate, [bool pickTime = false]) async{
    if(pickTime){
      final time = await showTimePicker(context: context, initialTime: TimeOfDay(hour: 6, minute: 0));
      if(time == null){
        return null;
      }
      return DateTime(2022,1,1,time.hour, time.minute);
    }
    return showDatePicker(context: context, initialDate: currentDate, firstDate: startDate, lastDate: endDate);
  }
}