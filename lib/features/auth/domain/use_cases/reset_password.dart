import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';

class ResetPassword implements VoidUseCase<ResetPasswordParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(ResetPasswordParams params) {
    return authRepository.resetPassword(email: params.email);
  }

  const ResetPassword({
    required this.authRepository,
  });
}

class ResetPasswordParams{
  final String email;
  ResetPasswordParams({required this.email});
}