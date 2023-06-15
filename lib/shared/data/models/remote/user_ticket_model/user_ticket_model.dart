import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:allxclusive/shared/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_ticket_model.freezed.dart';
part 'user_ticket_model.g.dart';

@freezed
class UserTicketModel with _$UserTicketModel {
  const factory UserTicketModel({
    @JsonKey(name: 'qr_core') required String qrCode,
    @JsonKey(name: 'ticket') required Ticket ticket,
    @JsonKey(name: 'event') required EventModel event,
    @JsonKey(name: 'ticket_uid') required String ticketUid,
    @JsonKey(name: 'event_uid') required String eventUid
  }) = _UserTicketModel;

  factory UserTicketModel.fromJson(Map<String, Object?> json)
      => _$UserTicketModelFromJson(json);
}