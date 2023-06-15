

import 'package:allxclusive/features/change_password/change_password/domain/repositories/change_password_repository_contract.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/usecases/void_use_case.dart';

class ChangePassword implements VoidUseCase<ChangePasswordParams>{
  final ChangePasswordRepository changePasswordRepository;

  @override
  Future<Failure?> execute(ChangePasswordParams params) {
    return changePasswordRepository.changePassword(oldPassword: params.oldPassword, newPassword: params.newPassword);
  }

  const ChangePassword({
    required this.changePasswordRepository,
  });
}

class ChangePasswordParams{
  final String oldPassword;
  final String newPassword;

  const ChangePasswordParams({
    required this.oldPassword,
    required this.newPassword,
  });
}