// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_stamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketStamp _$$_TicketStampFromJson(Map<String, dynamic> json) =>
    _$_TicketStamp(
      qrCode: json['qr_core'] as String,
      buyerUid: json['buyer_uid'] as String,
      gender: _genderFromJson(json['gender'] as String),
      ticketUid: json['ticket_uid'] as String,
      createdAt: timestampToDateTime(json['created_at'] as Timestamp),
    );

Map<String, dynamic> _$$_TicketStampToJson(_$_TicketStamp instance) =>
    <String, dynamic>{
      'qr_core': instance.qrCode,
      'buyer_uid': instance.buyerUid,
      'gender': _genderToJson(instance.gender),
      'ticket_uid': instance.ticketUid,
      'created_at': dateToTimestamp(instance.createdAt),
    };
