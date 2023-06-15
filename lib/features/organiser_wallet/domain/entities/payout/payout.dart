import 'package:currency_symbols/currency_symbols.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payout.freezed.dart';
part 'payout.g.dart';

@freezed
class Payout with _$Payout {
  const Payout._();

  String get amount => "${cSymbol(currency.toUpperCase())} ${(amountInCents / 100).toStringAsFixed(2)}";

  const factory Payout({
    required String currency,
    required String status,
    @JsonKey(name: 'amount') required int amountInCents,
    @JsonKey(name: 'created', fromJson: _fromIntToDateTime, toJson: _fromDateTimeToInt) required DateTime createdAt,
  }) = _Payout;

  factory Payout.fromJson(Map<String, Object?> json)
      => _$PayoutFromJson(json);

}

DateTime _fromIntToDateTime(int milliseconds){
  return DateTime.fromMillisecondsSinceEpoch(milliseconds * 1000);
}

int _fromDateTimeToInt(DateTime date){
  return date.millisecondsSinceEpoch * 1000;
}
