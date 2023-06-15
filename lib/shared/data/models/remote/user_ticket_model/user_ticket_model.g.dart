// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserTicketModel _$$_UserTicketModelFromJson(Map<String, dynamic> json) =>
    _$_UserTicketModel(
      qrCode: json['qr_core'] as String,
      ticket: Ticket.fromJson(json['ticket'] as Map<String, dynamic>),
      event: EventModel.fromJson(json['event'] as Map<String, dynamic>),
      ticketUid: json['ticket_uid'] as String,
      eventUid: json['event_uid'] as String,
    );

Map<String, dynamic> _$$_UserTicketModelToJson(_$_UserTicketModel instance) =>
    <String, dynamic>{
      'qr_core': instance.qrCode,
      'ticket': instance.ticket.toJson(),
      'event': instance.event.toJson(),
      'ticket_uid': instance.ticketUid,
      'event_uid': instance.eventUid,
    };
