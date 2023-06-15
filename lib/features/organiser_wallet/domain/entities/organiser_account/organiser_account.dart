import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../external_bank_account/external_bank_account.dart';

part 'organiser_account.freezed.dart';
part 'organiser_account.g.dart';

@freezed
class OrganiserAccount with _$OrganiserAccount {
  const OrganiserAccount._();

  bool get accountSetUpProperly => transfersEnabled && payoutsEnabled;

  ExternalBankAccount get defaultBankAccount => externalAccounts.firstWhere((e) => e.defaultForCurrency, orElse: () => const ExternalBankAccount(bankName: 'Bank not connected', routingNumber: 'Please create external bank', last4: '', defaultForCurrency: false));

  const factory OrganiserAccount({
    required String id,
    @JsonKey(name: 'charges_enabled') required bool transfersEnabled,
    @JsonKey(name: 'payouts_enabled') required bool payoutsEnabled,
    @JsonKey(name: 'external_accounts', includeToJson: false, fromJson: _extractBankAccounts) required List<ExternalBankAccount> externalAccounts
  }) = _OrganiserAccount;

  factory OrganiserAccount.fromJson(Map<String, Object?> json)
      => _$OrganiserAccountFromJson(json);
}

List<ExternalBankAccount> _extractBankAccounts(dynamic obj){
  return ((obj as Map<String,dynamic>)["data"] as List).map((e) => ExternalBankAccount.fromJson(e)).toList();
}