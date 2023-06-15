// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_join_request_stamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupJoinRequestStamp _$$_GroupJoinRequestStampFromJson(
        Map<String, dynamic> json) =>
    _$_GroupJoinRequestStamp(
      toUserUid: json['to_user_uid'] as String,
      eventUid: json['event_uid'] as String,
      originalJoinRequestUid: json['original_join_request_uid'] as String,
    );

Map<String, dynamic> _$$_GroupJoinRequestStampToJson(
        _$_GroupJoinRequestStamp instance) =>
    <String, dynamic>{
      'to_user_uid': instance.toUserUid,
      'event_uid': instance.eventUid,
      'original_join_request_uid': instance.originalJoinRequestUid,
    };
