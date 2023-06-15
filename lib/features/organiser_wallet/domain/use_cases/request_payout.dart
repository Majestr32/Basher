
import 'package:allxclusive/features/organiser_wallet/domain/entities/payout/payout.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/organiser_wallet_repository_contract.dart';

class RequestPayout implements UseCase<Payout, RequestPayoutParams>{
  final OrganiserWalletRepository organiserWalletRepository;

  @override
  Future<Either<Failure, Payout>> execute(RequestPayoutParams params) {
    return organiserWalletRepository.requestPayout(accountId: params.accountId, amount: params.amount, currency: params.currency);
  }

  const RequestPayout({
    required this.organiserWalletRepository,
  });
}

class RequestPayoutParams{
  final String accountId;
  final String currency;
  final int amount;

  const RequestPayoutParams({
    required this.accountId,
    required this.currency,
    required this.amount,
  });
}