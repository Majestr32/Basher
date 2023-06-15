// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBalance _$$_AccountBalanceFromJson(Map<String, dynamic> json) =>
    _$_AccountBalance(
      pendingBalances: (json['pending'] as List<dynamic>)
          .map((e) => CurrencyBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableBalances: (json['available'] as List<dynamic>)
          .map((e) => CurrencyBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccountBalanceToJson(_$_AccountBalance instance) =>
    <String, dynamic>{
      'pending': instance.pendingBalances.map((e) => e.toJson()).toList(),
      'available': instance.availableBalances.map((e) => e.toJson()).toList(),
    };
