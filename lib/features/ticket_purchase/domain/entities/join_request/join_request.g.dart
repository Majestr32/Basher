// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinRequest _$$_JoinRequestFromJson(Map<String, dynamic> json) =>
    _$_JoinRequest(
      fromUser: User.fromJson(json['fromUser'] as Map<String, dynamic>),
      event: EventModel.fromJson(json['event'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
      groupMembers: (json['group_members'] as List<dynamic>?)
              ?.map((e) => JoinRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fromUserUid: json['from_user_uid'] as String,
      toUserUid: json['to_user_uid'] as String,
      eventUid: json['event_uid'] as String,
      accepted: json['accepted'] as bool?,
    );

Map<String, dynamic> _$$_JoinRequestToJson(_$_JoinRequest instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser.toJson(),
      'event': instance.event.toJson(),
      'uid': instance.uid,
      'group_members': instance.groupMembers.map((e) => e.toJson()).toList(),
      'from_user_uid': instance.fromUserUid,
      'to_user_uid': instance.toUserUid,
      'event_uid': instance.eventUid,
      'accepted': instance.accepted,
    };
