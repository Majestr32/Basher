import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'external_bank_account.freezed.dart';
part 'external_bank_account.g.dart';

@freezed
class ExternalBankAccount with _$ExternalBankAccount {
  const factory ExternalBankAccount({
    @JsonKey(name: 'bank_name') required String bankName,
    @JsonKey(name: 'routing_number') required String routingNumber,
    required String last4,
    @JsonKey(name: 'default_for_currency') required bool defaultForCurrency
  }) = _ExternalBankAccount;

  factory ExternalBankAccount.fromJson(Map<String, Object?> json)
      => _$ExternalBankAccountFromJson(json);
}