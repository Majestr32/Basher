// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payout _$$_PayoutFromJson(Map<String, dynamic> json) => _$_Payout(
      currency: json['currency'] as String,
      status: json['status'] as String,
      amountInCents: json['amount'] as int,
      createdAt: _fromIntToDateTime(json['created'] as int),
    );

Map<String, dynamic> _$$_PayoutToJson(_$_Payout instance) => <String, dynamic>{
      'currency': instance.currency,
      'status': instance.status,
      'amount': instance.amountInCents,
      'created': _fromDateTimeToInt(instance.createdAt),
    };
