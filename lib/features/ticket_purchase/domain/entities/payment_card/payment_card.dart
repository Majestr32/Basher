import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payment_card.freezed.dart';
part 'payment_card.g.dart';

@freezed
class PaymentCard with _$PaymentCard {
  const factory PaymentCard({
    required String brand,
    @JsonKey(name: 'exp_month') required int expMonth,
    @JsonKey(name: 'exp_year') required int expYear,
    required String last4
  }) = _PaymentCard;

  factory PaymentCard.fromJson(Map<String, Object?> json)
      => _$PaymentCardFromJson(json);
}