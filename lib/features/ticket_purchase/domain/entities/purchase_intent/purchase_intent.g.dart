// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseIntent _$$_PurchaseIntentFromJson(Map<String, dynamic> json) =>
    _$_PurchaseIntent(
      ticket: Ticket.fromJson(json['ticket'] as Map<String, dynamic>),
      event: EventModel.fromJson(json['event'] as Map<String, dynamic>),
      userUid: json['userUid'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$_PurchaseIntentToJson(_$_PurchaseIntent instance) =>
    <String, dynamic>{
      'ticket': instance.ticket.toJson(),
      'event': instance.event.toJson(),
      'userUid': instance.userUid,
      'gender': instance.gender,
    };
