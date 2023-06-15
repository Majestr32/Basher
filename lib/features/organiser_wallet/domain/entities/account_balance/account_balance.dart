import 'package:allxclusive/features/organiser_wallet/domain/entities/currency_balance/currency_balance.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_balance.freezed.dart';
part 'account_balance.g.dart';

@freezed
class AccountBalance with _$AccountBalance {
  const AccountBalance._();

  CurrencyBalance get defaultPendingBalance => pendingBalances.isEmpty ? CurrencyBalance(currency: 'usd', amount: 0) : pendingBalances.first;
  CurrencyBalance get defaultAvailableBalance => availableBalances.isEmpty ? CurrencyBalance(currency: 'usd', amount: 0) : availableBalances.first;

  const factory AccountBalance({
    @JsonKey(name: 'pending', includeToJson: false) required List<CurrencyBalance> pendingBalances,
    @JsonKey(name: 'available', includeToJson: false) required List<CurrencyBalance> availableBalances,
  }) = _AccountBalance;

  factory AccountBalance.fromJson(Map<String, Object?> json)
      => _$AccountBalanceFromJson(json);
}