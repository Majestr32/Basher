import 'package:allxclusive/features/ticket_purchase/domain/entities/payment_card/payment_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required String id,
    required PaymentCard card
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, Object?> json)
      => _$PaymentMethodFromJson(json);
}