import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/organiser_account/organiser_account.dart';

class GetAccountLink implements UseCase<String, GetAccountLinkParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, String>> execute(GetAccountLinkParams params) {
    return organiserWalletRepository.getAccountLink(accountId: params.accountId);
  }

  const GetAccountLink({
    required this.organiserWalletRepository,
  });
}

class GetAccountLinkParams{
  final String accountId;

  const GetAccountLinkParams({
    required this.accountId,
  });
}