// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyBalance _$$_CurrencyBalanceFromJson(Map<String, dynamic> json) =>
    _$_CurrencyBalance(
      currency: json['currency'] as String,
      amount: _fromCentsToDouble(json['amount'] as int),
    );

Map<String, dynamic> _$$_CurrencyBalanceToJson(_$_CurrencyBalance instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
