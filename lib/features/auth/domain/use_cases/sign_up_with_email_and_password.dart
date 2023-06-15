import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';

import '../../../../core/error/failure.dart';

class SignUpWithEmailAndPassword implements VoidUseCase<SignUpWithEmailAndPasswordParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(SignUpWithEmailAndPasswordParams params) {
    return authRepository.signUpWithEmailAndPassword(email: params.email, password: params.password);
  }

  const SignUpWithEmailAndPassword({
    required this.authRepository,
  });
}

class SignUpWithEmailAndPasswordParams{
  final String email;
  final String password;
  SignUpWithEmailAndPasswordParams({required this.email, required this.password});
}