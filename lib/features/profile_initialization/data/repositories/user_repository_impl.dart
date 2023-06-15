import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/profile_initialization/data/data_sources/remote/user_service_contract.dart';
import 'package:allxclusive/features/profile_initialization/domain/repositories/user_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/user/user.dart';

class UserRepositoryImpl implements UserRepository{
  final UserService _userService;

  ///Throws Failure(message: 'User with uid [uid] doesn`t exist', code: 'user_not_exist') if record doesn't exist
  @override
  Future<Either<Failure, User>> getUserById({required String uid}) async{
    try{
      final user = await _userService.getUserById(uid: uid);
      if(user == null){
        return Left(Failure(message: 'User with uid $uid doesn`t exist', code: 'user_not_exist'));
      }else{
        return Right(user);
      }
    }on Failure catch(e){
      return Left(e);
    }
  }

  /// Can throw
  /// Failure(message: 'Photo must be of type .png, .jpg or .jpeg', code: 'invalid-photo-format')
  /// Failure(message: 'File doesn`t exist anymore', code: 'file-not-exist')
  /// Failure(message: 'File size should be less than ${_maxUploadSize / 1000000} mb', code: 'file-too-big')
  /// Failure(message: 'Uploading file caused error', code: 'uploading-file-error')
  /// Failure(message: 'User has been saved improper', code: 'user-saved-improper')
  /// Failure(message: 'Estimating file size operation failed', code: 'estimating-file-size-failed')
  ///
  /// Returns saved user from database if it was properly saved
  @override
  Future<Either<Failure, User>> saveUser({required User user}) async{
    try{
      final result = await _userService.saveUser(user: user);
      return Right(result);
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, User>> editUser({required User user, String? imgToUpdate}) async{
    try{
      final result = await _userService.editUser(user: user, imgToUpdate: imgToUpdate);
      return Right(result);
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Failure?> setUserMode({required String uid, required Role role}) async{
    try{
      await _userService.setUserMode(uid: uid, role: role);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  const UserRepositoryImpl({
    required UserService userService,
  }) : _userService = userService;

}