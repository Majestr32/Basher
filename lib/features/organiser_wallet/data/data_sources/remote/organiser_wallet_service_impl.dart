import 'package:allxclusive/core/consts/api.dart';
import 'package:allxclusive/core/consts/firebase_collections.dart';
import 'package:allxclusive/features/organiser_wallet/data/data_sources/remote/organiser_wallet_service_contract.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/account_balance/account_balance.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/organiser_account/organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/payout/payout.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

import '../../../../../core/error/failure.dart';

class OrganiserWalletServiceImpl implements OrganiserWalletService{
  final Dio _dio;
  final FirebaseFirestore _db;

  @override
  Future<OrganiserAccount> createOrganiserAccount({required String email, required String userUid}) async{
    try{
      final accountResponse = await _dio.post(ApiEndpoints.createOrganiserAccount, data: {"email": email});
      final account = OrganiserAccount.fromJson(accountResponse.data);
      await _db.collection(kUsersCollection).doc(userUid).collection(kUserStripeAccounts).add({"id": account.id});
      return account;
    }on DioError catch(e){
      throw const Failure(code: 'failed-create-organiser-account-api', message: 'Failed to create organiser account');
    }on FirebaseException catch(e){
      throw const Failure(code: 'failed-create-organiser-account-firestore', message: 'Failed to connect organiser account');
    }
  }

  @override
  Future<OrganiserAccount?> getOrganiserAccount({required String userUid}) async{
    try{
      final accountIds = await _db.collection(kUsersCollection).doc(userUid).collection(kUserStripeAccounts).get();

      if(accountIds.size == 0){
        return null;
      }

      final accountId = accountIds.docs.first.get("id") as String;
      final accountResponse = await _dio.get('${ApiEndpoints.getOrganiserAccountById}/$accountId');
      final account = OrganiserAccount.fromJson(accountResponse.data);
      return account;
    }on DioError catch(e){
      throw const Failure(code: 'failed-get-organiser-account-api', message: 'Failed to get organiser account');
    }on FirebaseException catch(e){
      throw const Failure(code: 'failed-get-organiser-account-firestore', message: 'Failed to get organiser account id');
    }
  }

  @override
  Future<List<Payout>> getPayoutsList({required String accountId}) async{
    try{
      final payouts = await _dio.get(ApiEndpoints.listAccountPayouts, queryParameters: {'connected_account': accountId});
      return (payouts.data["data"] as List).map((e) => Payout.fromJson(e)).toList();
    }on DioError catch(e){
      throw const Failure(message: 'Failed to get payouts list', code: 'failed-get-payouts-list');
    }
  }

  @override
  Future<AccountBalance> getAccountBalance({required String accountId}) async{
    try{
      final balance = await _dio.get(ApiEndpoints.getAccountBalance, queryParameters: {'connected_account': accountId});
      return AccountBalance.fromJson(balance.data);
    }on DioError catch(e){
      throw const Failure(message: 'Failed to get account balance', code: 'failed-get-account-balance');
    }
  }

  @override
  Future<String> getAccountLink({required String accountId}) async{
    try{
      final response = await _dio.post(ApiEndpoints.createAccountLink, data: {
        "account_id": accountId
      });
      return response.data["url"];
    }on DioError catch(e){
      throw const Failure(message: 'Failed to generate account link', code: 'failed-generate-account-link');
    }
  }

  @override
  Future<Payout> requestPayout({required String accountId, required String currency, required int amount}) async{
    try{
      final response = await _dio.post(ApiEndpoints.payoutAccount, data: {
        "account_id": accountId,
        "currency": currency,
        "amount": amount
      });
      return Payout.fromJson(response.data);
    }on DioError catch(e){
      throw const Failure(message: 'Inefficient balance', code: 'inefficient-balance');
    }
  }

  const OrganiserWalletServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
  })  : _dio = dio,
        _db = db;
}