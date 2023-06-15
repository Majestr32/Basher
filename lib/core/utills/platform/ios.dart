import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../theme/colors.dart';


class IosPlatformUtils{
  IosPlatformUtils._internal();
  static final IosPlatformUtils _instance = IosPlatformUtils._internal();

  static IosPlatformUtils get instance => _instance;

  Future<bool> showIosConfirmationWindow(BuildContext context, String title, String content, String yes, String no) async{
    bool? chosen;
    await showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              // The "Yes" button
              CupertinoDialogAction(
                onPressed: () {
                  chosen = true;
                  Navigator.of(context).pop();
                },
                child: Text(yes),
                isDefaultAction: true,
                isDestructiveAction: true,
              ),
              // The "No" button
              CupertinoDialogAction(
                onPressed: () {
                  chosen = false;
                  Navigator.of(context).pop();
                },
                child: Text(no),
                isDefaultAction: false,
                isDestructiveAction: false,
              )
            ],
          );
        });
    return chosen ?? false;
  }

  Future<DateTime?> showIosDatePicker(BuildContext context, DateTime currentDate, DateTime startDate, DateTime endDate, [bool pickTime = false]) async{
    DateTime? date;
    bool returnResult = true;
    await showCupertinoModalPopup(
        context: context,
        builder: (_) => Material(
          child: SizedBox(
            height: 230,
            child: Container(
              color: SchedulerBinding.instance.window.platformBrightness != Brightness.light ? KColors.textColor : KColors.bgColor,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 180,
                      color: SchedulerBinding.instance.window.platformBrightness != Brightness.light ? KColors.textColor : KColors.bgColor,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(
                          brightness: SchedulerBinding.instance.window.platformBrightness
                        ),
                        child: CupertinoDatePicker(
                            initialDateTime: currentDate,
                            minimumYear: startDate.year,
                            maximumYear: endDate.year,
                            minimumDate: startDate,
                            maximumDate: endDate,
                            mode: pickTime ? CupertinoDatePickerMode.time : CupertinoDatePickerMode.date,
                            onDateTimeChanged: (val) {
                              date = val;
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(children: [
                      GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){
                            returnResult = false;
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Text('Cancel', style: TextStyle(color: KColors.errorColor),)),
                      Spacer(),
                      GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){
                            returnResult = true;
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Text('OK', style: TextStyle(color: KColors.mainAccent),))
                    ],),
                  ),
                ],
              ),
            ),
          ),
        ));

    if(!returnResult){
      return null;
    }else{
      return date;
    }
  }


}