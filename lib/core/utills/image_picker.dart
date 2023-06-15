import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../theme/colors.dart';

///Returns path to selected photo
Future<String?> showPhotoActionSheet(BuildContext context) async{
  int choice = 0;
  await showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoTheme(
      data: CupertinoThemeData(
        primaryColor: KColors.textColor,
        barBackgroundColor: KColors.textColor,
      ),
      child: CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              choice = 1;
              Navigator.pop(context);
            },
            child: Text('Use camera', style: TextStyle(color: SchedulerBinding.instance.window.platformBrightness == Brightness.light ? KColors.textColor : KColors.bgColor)),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              choice = 2;
              Navigator.pop(context);
            },
            child: Text('Select photo', style: TextStyle(color: SchedulerBinding.instance.window.platformBrightness == Brightness.light ? KColors.textColor : KColors.bgColor)),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancell', style: TextStyle(color: SchedulerBinding.instance.window.platformBrightness == Brightness.light ? KColors.bgColor : KColors.textColor)),
        ),
      ),
    ),
  );

  String? photoPath;
  switch(choice){
    case 0:
      break;
    case 1:
      final pickedImg = await ImagePicker().pickImage(source: ImageSource.camera,);
      if(pickedImg == null){
        return null;
      }
      photoPath = pickedImg.path;
      break;
    case 2:
      final pickedImg = await ImagePicker().pickImage(source: ImageSource.gallery,);
      if(pickedImg == null){
        return null;
      }
      photoPath = pickedImg.path;
      break;
  }

  if(photoPath == null){
    return null;
  }

  final croppedImg = await ImageCropper().cropImage(sourcePath: photoPath, maxWidth: 512, compressQuality: 95, maxHeight: 512, aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1), compressFormat: ImageCompressFormat.png,
      aspectRatioPresets: [CropAspectRatioPreset.square], uiSettings: [AndroidUiSettings(hideBottomControls: true), IOSUiSettings(hidesNavigationBar: true)]);
  if(croppedImg == null){
    return null;
  }
  String path = croppedImg.path;
  return path;
}