import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/user/user.dart';
import '../repositories/user_repository_contract.dart';

class SaveUser implements UseCase<User, SaveUserParams>{
  final UserRepository userRepository;

  @override
  Future<Either<Failure, User>> execute(SaveUserParams params) {
    return userRepository.saveUser(user: params.user);
  }

  const SaveUser({
    required this.userRepository,
  });
}

class SaveUserParams{
  final User user;
  SaveUserParams({required this.user});
}