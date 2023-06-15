import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';

class DeleteAccount implements VoidUseCase<DeleteAccountParams>{
  final AuthRepository authRepository;

  @override
  Future<Failure?> execute(DeleteAccountParams params) {
    return authRepository.deleteAccount(userUid: params.userUid);
  }

  const DeleteAccount({
    required this.authRepository,
  });
}

class DeleteAccountParams{
  final String userUid;
  DeleteAccountParams({required this.userUid});
}