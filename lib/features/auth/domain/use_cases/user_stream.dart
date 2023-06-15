import 'package:allxclusive/features/auth/domain/repositories/auth_repository_contract.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetUserStream{
  final AuthRepository _authRepository;

  Stream<User?> execute(){
    return _authRepository.user;
  }

  const GetUserStream({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
}