import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/organiser_account/organiser_account.dart';

class CreateOrganiserAccount implements UseCase<OrganiserAccount, CreateOrganiserAccountParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, OrganiserAccount>> execute(CreateOrganiserAccountParams params) {
    return organiserWalletRepository.createOrganiserAccount(email: params.email, userUid: params.userUid);
  }

  const CreateOrganiserAccount({
    required this.organiserWalletRepository,
  });
}

class CreateOrganiserAccountParams{
  final String userUid;
  final String email;

  const CreateOrganiserAccountParams({
    required this.userUid,
    required this.email,
  });
}