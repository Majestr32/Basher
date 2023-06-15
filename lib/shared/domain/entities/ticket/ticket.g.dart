// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      uid: json['uid'] as String?,
      type: _fromStringToTicketsTypes(json['type'] as String),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] == null
          ? Currencies.usd
          : _fromStringToCurrency(json['currency'] as String),
      bought: json['bought'] as int? ?? 0,
      fixedQuantity: json['fixed_quantity'] as int,
    );

Map<String, dynamic> _$$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'uid': instance.uid,
      'type': _fromTicketsTypesToString(instance.type),
      'description': instance.description,
      'price': instance.price,
      'currency': _fromCurrencyToString(instance.currency),
      'bought': instance.bought,
      'fixed_quantity': instance.fixedQuantity,
    };
