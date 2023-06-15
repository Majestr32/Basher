import 'dart:io';

import 'package:flutter/material.dart';

import 'android.dart';
import 'ios.dart';

class AppPlatformUtils{
  AppPlatformUtils._internal();
  static final AppPlatformUtils _instance = AppPlatformUtils._internal();

  static AppPlatformUtils get instance => _instance;

  Future<DateTime?> showDatePicker(BuildContext context, DateTime currentDate, DateTime startDate, DateTime endDate) async{
    if(Platform.isIOS){
      return IosPlatformUtils.instance.showIosDatePicker(context, currentDate, startDate, endDate);
    }else{
      return AndroidPlatformUtils.instance.showAndroidDatePicker(context, currentDate, startDate, endDate);
    }
  }

  Future<DateTime?> showTimePicker(BuildContext context, DateTime currentDate, DateTime startDate, DateTime endDate) async{
    if(Platform.isIOS){
      return IosPlatformUtils.instance.showIosDatePicker(context, currentDate, startDate, endDate, true);
    }else{
      return AndroidPlatformUtils.instance.showAndroidDatePicker(context, currentDate, startDate, endDate, true);
    }
  }

  Future<bool> showConfirmationWindow(BuildContext context) async{
    final yes = 'Yes';
    final no = 'No';
    final title = '';
    final content = '';
    if(Platform.isIOS){
      return IosPlatformUtils.instance.showIosConfirmationWindow(context, title, content, yes, no);
    }else{
      return AndroidPlatformUtils.instance.showAndroidConfirmationWindow(context, title, content, yes, no);
    }
  }
}