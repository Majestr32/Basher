import 'package:allxclusive/features/organiser_wallet/domain/entities/organiser_account/organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/payout/payout.dart';

import '../../../domain/entities/account_balance/account_balance.dart';

abstract class OrganiserWalletService{
  Future<OrganiserAccount> createOrganiserAccount({required String email, required String userUid});
  Future<OrganiserAccount?> getOrganiserAccount({required String userUid});
  Future<List<Payout>> getPayoutsList({required String accountId});
  Future<AccountBalance> getAccountBalance({required String accountId});
  Future<String> getAccountLink({required String accountId});
  Future<Payout> requestPayout({required String accountId, required String currency, required int amount});
}