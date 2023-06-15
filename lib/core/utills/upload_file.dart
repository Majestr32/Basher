import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import '../error/failure.dart';

const int _maxUploadSize = 2000000;

extension UploadFileToStorageExtension on Reference{
  Future<String> uploadFile({required String imgToUpdate}) async{
    if(!(imgToUpdate.endsWith('.png')
        || imgToUpdate.endsWith('.jpg')
        || imgToUpdate.endsWith('.jpeg'))){
      throw const Failure(message: 'Photo must be of type .png, .jpg or .jpeg', code: 'invalid-photo-format');
    }

    final file = File(imgToUpdate);
    if(!file.existsSync()){
      throw const Failure(message: 'File doesn`t exist anymore', code: 'file-not-exist');
    }
    if(file.lengthSync() > _maxUploadSize){
      throw const Failure(message: 'File size should be less than ${_maxUploadSize / 1000000} mb', code: 'file-too-big');
    }
    final task = await putFile(file);
    if(task.state == TaskState.error){
      throw const Failure(message: 'Uploading file caused error', code: 'uploading-file-error');
    }
    return await task.ref.getDownloadURL();
  }
}