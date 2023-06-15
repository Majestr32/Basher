

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';

import '../../../../shared/domain/entities/user/user.dart';
import '../repositories/user_repository_contract.dart';

class SetUserMode implements VoidUseCase<SetUserModeParams>{
  final UserRepository userRepository;

  @override
  Future<Failure?> execute(SetUserModeParams params) {
    return userRepository.setUserMode(role: params.role, uid: params.uid);
  }

  const SetUserMode({
    required this.userRepository,
  });
}

class SetUserModeParams{
  final String uid;
  final Role role;
  SetUserModeParams({required this.uid, required this.role});
}