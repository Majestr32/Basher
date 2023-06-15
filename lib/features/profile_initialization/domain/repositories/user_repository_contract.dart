import 'package:allxclusive/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/user/user.dart';

abstract class UserRepository{
  Future<Either<Failure,User>> getUserById({required String uid});
  Future<Either<Failure,User>> saveUser({required User user});
  Future<Either<Failure,User>> editUser({required User user, String? imgToUpdate});
  Future<Failure?> setUserMode({required String uid, required Role role});
}