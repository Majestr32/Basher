import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';

class SignInWithEmailAndPassword implements VoidUseCase<SignInWithEmailAndPasswordParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(SignInWithEmailAndPasswordParams params) {
    return authRepository.signInWithEmailAndPassword(email: params.email, password: params.password);
  }

  const SignInWithEmailAndPassword({
    required this.authRepository,
  });
}

class SignInWithEmailAndPasswordParams{
  final String email;
  final String password;
  SignInWithEmailAndPasswordParams({required this.email, required this.password});
}