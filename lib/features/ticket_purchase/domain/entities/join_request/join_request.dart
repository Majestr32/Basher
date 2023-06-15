import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'join_request.freezed.dart';
part 'join_request.g.dart';

enum JoinRequestType{
  solo,
  group;
}

@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest({
    required User fromUser,
    required EventModel event,
    String? uid,
    @JsonKey(name: 'group_members') @Default([]) List<JoinRequest> groupMembers,
    @JsonKey(name: 'from_user_uid') required String fromUserUid,
    @JsonKey(name: 'to_user_uid') required String toUserUid,
    @JsonKey(name: 'event_uid') required String eventUid,
    bool? accepted
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, Object?> json)
      => _$JoinRequestFromJson(json);
}