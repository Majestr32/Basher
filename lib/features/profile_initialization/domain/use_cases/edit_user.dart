import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/user/user.dart';
import '../repositories/user_repository_contract.dart';

class EditUser implements UseCase<User, EditUserParams>{
  final UserRepository userRepository;

  @override
  Future<Either<Failure, User>> execute(EditUserParams params) {
    return userRepository.editUser(user: params.user, imgToUpdate: params.imgToUpdate);
  }

  const EditUser({
    required this.userRepository,
  });
}

class EditUserParams{
  final User user;
  final String? imgToUpdate;
  EditUserParams({required this.user, this.imgToUpdate});
}