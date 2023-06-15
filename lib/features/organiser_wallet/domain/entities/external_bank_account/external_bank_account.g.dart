// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExternalBankAccount _$$_ExternalBankAccountFromJson(
        Map<String, dynamic> json) =>
    _$_ExternalBankAccount(
      bankName: json['bank_name'] as String,
      routingNumber: json['routing_number'] as String,
      last4: json['last4'] as String,
      defaultForCurrency: json['default_for_currency'] as bool,
    );

Map<String, dynamic> _$$_ExternalBankAccountToJson(
        _$_ExternalBankAccount instance) =>
    <String, dynamic>{
      'bank_name': instance.bankName,
      'routing_number': instance.routingNumber,
      'last4': instance.last4,
      'default_for_currency': instance.defaultForCurrency,
    };
