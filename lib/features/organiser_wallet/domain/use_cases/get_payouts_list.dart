import 'package:allxclusive/features/organiser_wallet/domain/entities/payout/payout.dart';
import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetPayoutsList implements UseCase<List<Payout>, GetPayoutsListParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, List<Payout>>> execute(GetPayoutsListParams params) {
    return organiserWalletRepository.getPayoutsList(accountId: params.accountId);
  }

  const GetPayoutsList({
    required this.organiserWalletRepository,
  });
}

class GetPayoutsListParams{
  final String accountId;

  const GetPayoutsListParams({
    required this.accountId
  });
}