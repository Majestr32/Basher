import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/usecase.dart';
import 'package:allxclusive/features/profile_initialization/domain/repositories/user_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/user/user.dart';


class GetUserById implements UseCase<User, GetUserByIdParams>{
  final UserRepository userRepository;
  
  @override
  Future<Either<Failure, User>> execute(GetUserByIdParams params) {
    return userRepository.getUserById(uid: params.uid);
  }

  const GetUserById({
    required this.userRepository,
  });
}

class GetUserByIdParams{
  final String uid;
  GetUserByIdParams({required this.uid});
}