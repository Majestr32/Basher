import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/organiser_account/organiser_account.dart';

class GetOrganiserAccount implements UseCase<OrganiserAccount?, GetOrganiserAccountParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, OrganiserAccount?>> execute(GetOrganiserAccountParams params) {
    return organiserWalletRepository.getOrganiserAccount(userUid: params.userUid);
  }

  const GetOrganiserAccount({
    required this.organiserWalletRepository,
  });
}

class GetOrganiserAccountParams{
  final String userUid;

  const GetOrganiserAccountParams({
    required this.userUid,
  });
}