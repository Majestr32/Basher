import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/organiser_wallet/data/data_sources/remote/organiser_wallet_service_contract.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/account_balance/account_balance.dart';

import 'package:allxclusive/features/organiser_wallet/domain/entities/organiser_account/organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/payout/payout.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/organiser_wallet_repository_contract.dart';

class OrganiserWalletRepositoryImpl implements OrganiserWalletRepository{
  final OrganiserWalletService _organiserWalletService;

  @override
  Future<Either<Failure, OrganiserAccount>> createOrganiserAccount({required String email, required String userUid}) async{
    try{
      return Right(await _organiserWalletService.createOrganiserAccount(email: email, userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure,OrganiserAccount?>> getOrganiserAccount({required String userUid}) async{
    try{
      return Right(await _organiserWalletService.getOrganiserAccount(userUid: userUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<Payout>>> getPayoutsList({required String accountId}) async{
    try{
      return Right(await _organiserWalletService.getPayoutsList(accountId: accountId));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, AccountBalance>> getAccountBalance({required String accountId}) async{
    try{
      return Right(await _organiserWalletService.getAccountBalance(accountId: accountId));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, String>> getAccountLink({required String accountId}) async{
    try{
      return Right(await _organiserWalletService.getAccountLink(accountId: accountId));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Payout>> requestPayout({required String accountId, required String currency, required int amount}) async{
    try{
      return Right(await _organiserWalletService.requestPayout(accountId: accountId, amount: amount, currency: currency));
    }on Failure catch(e){
      return Left(e);
    }
  }

  const OrganiserWalletRepositoryImpl({
    required OrganiserWalletService organiserWalletService,
  }) : _organiserWalletService = organiserWalletService;
}