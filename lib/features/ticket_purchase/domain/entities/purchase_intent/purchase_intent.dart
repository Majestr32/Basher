import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/event/event.dart';

part 'purchase_intent.freezed.dart';
part 'purchase_intent.g.dart';

@freezed
class PurchaseIntent with _$PurchaseIntent {
  const factory PurchaseIntent({
    required Ticket ticket,
    required EventModel event,
    required String userUid,
    required String gender
  }) = _PurchaseIntent;

  factory PurchaseIntent.fromJson(Map<String, Object?> json)
      => _$PurchaseIntentFromJson(json);
}