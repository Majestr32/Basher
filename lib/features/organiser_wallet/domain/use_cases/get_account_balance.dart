import 'package:allxclusive/features/organiser_wallet/domain/entities/account_balance/account_balance.dart';
import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetAccountBalance implements UseCase<AccountBalance, GetAccountBalanceParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, AccountBalance>> execute(GetAccountBalanceParams params) {
    return organiserWalletRepository.getAccountBalance(accountId: params.accountId);
  }

  const GetAccountBalance({
    required this.organiserWalletRepository,
  });
}

class GetAccountBalanceParams{
  final String accountId;

  const GetAccountBalanceParams({
    required this.accountId,
  });
}