import 'package:allxclusive/core/enums/tickets_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/enums/currencies.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const Ticket._();

  String get priceWithCurrency => "${price.toStringAsFixed(2)} ${currency.currencySign}";

  const factory Ticket({
    String? uid,
    @JsonKey(fromJson: _fromStringToTicketsTypes, toJson: _fromTicketsTypesToString) required TicketsTypes type,
    required String description,
    required double price,
    @Default(Currencies.usd) @JsonKey(fromJson: _fromStringToCurrency, toJson: _fromCurrencyToString) Currencies currency,
    @Default(0) int bought,
    @JsonKey(name: 'fixed_quantity') required int fixedQuantity
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, Object?> json)
      => _$TicketFromJson(json);
}

String _fromCurrencyToString(Currencies currency){
  return currency.currencySign;
}

Currencies _fromStringToCurrency(String currency){
  return Currencies.fromCurrencySign(currency);
}

String _fromTicketsTypesToString(TicketsTypes type){
  return type.name;
}

TicketsTypes _fromStringToTicketsTypes(String type){
  return TicketsTypes.fromString(type);
}