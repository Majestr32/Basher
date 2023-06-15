import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

import '../repositories/verify_phone_repository_contract.dart';

class IsPhoneNumberSet implements UseCase<bool,IsPhoneNumberSetParams>{
  final VerifyPhoneRepository verifyPhoneRepository;

  @override
  Future<Either<Failure,bool>> execute(IsPhoneNumberSetParams params) {
    return verifyPhoneRepository.isPhoneNumberSet(userUid: params.userUid);
  }

  const IsPhoneNumberSet({
    required this.verifyPhoneRepository,
  });
}

class IsPhoneNumberSetParams{
  final String userUid;

  const IsPhoneNumberSetParams({
    required this.userUid,
  });
}