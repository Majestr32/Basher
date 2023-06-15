import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';

class SignOut implements VoidUseCase<SignOutParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(SignOutParams params) {
    return authRepository.signOut();
  }

  const SignOut({
    required this.authRepository,
  });
}

class SignOutParams{
  SignOutParams();
}