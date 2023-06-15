import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/account_balance/account_balance.dart';
import 'package:dartz/dartz.dart';

import '../entities/organiser_account/organiser_account.dart';
import '../entities/payout/payout.dart';

abstract class OrganiserWalletRepository{
  Future<Either<Failure, OrganiserAccount>> createOrganiserAccount({required String email, required String userUid});
  Future<Either<Failure, OrganiserAccount?>> getOrganiserAccount({required String userUid});
  Future<Either<Failure, List<Payout>>> getPayoutsList({required String accountId});
  Future<Either<Failure, AccountBalance>> getAccountBalance({required String accountId});
  Future<Either<Failure, String>> getAccountLink({required String accountId});
  Future<Either<Failure, Payout>> requestPayout({required String accountId, required String currency, required int amount});
}