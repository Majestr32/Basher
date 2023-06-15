import 'package:currency_symbols/currency_symbols.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_balance.freezed.dart';
part 'currency_balance.g.dart';

@freezed
class CurrencyBalance with _$CurrencyBalance {
  const CurrencyBalance._();

  String get amountString => "${cSymbol(currency.toUpperCase())} ${amount.toStringAsFixed(2)}";

  const factory CurrencyBalance({
    required String currency,
    @JsonKey(includeToJson: false, fromJson: _fromCentsToDouble) required double amount
  }) = _CurrencyBalance;

  factory CurrencyBalance.fromJson(Map<String, Object?> json)
      => _$CurrencyBalanceFromJson(json);
}

double _fromCentsToDouble(int cents){
  return cents / 100;
}