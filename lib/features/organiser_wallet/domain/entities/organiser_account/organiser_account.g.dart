// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organiser_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganiserAccount _$$_OrganiserAccountFromJson(Map<String, dynamic> json) =>
    _$_OrganiserAccount(
      id: json['id'] as String,
      transfersEnabled: json['charges_enabled'] as bool,
      payoutsEnabled: json['payouts_enabled'] as bool,
      externalAccounts: _extractBankAccounts(json['external_accounts']),
    );

Map<String, dynamic> _$$_OrganiserAccountToJson(_$_OrganiserAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'charges_enabled': instance.transfersEnabled,
      'payouts_enabled': instance.payoutsEnabled,
      'external_accounts':
          instance.externalAccounts.map((e) => e.toJson()).toList(),
    };
