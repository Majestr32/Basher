import 'package:allxclusive/core/usecases/void_use_case.dart';

import '../../../../core/error/failure.dart';
import '../repositories/auth_repository_contract.dart';

class SignInWithGoogle implements VoidUseCase<SignInWithGoogleParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(SignInWithGoogleParams params) {
    return authRepository.signInWithGoogle();
  }

  const SignInWithGoogle({
    required this.authRepository,
  });
}

class SignInWithGoogleParams{
  SignInWithGoogleParams();
}