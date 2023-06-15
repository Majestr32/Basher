import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'group_join_request_stamp.freezed.dart';
part 'group_join_request_stamp.g.dart';

@freezed
class GroupJoinRequestStamp with _$GroupJoinRequestStamp {
  const factory GroupJoinRequestStamp({
    @JsonKey(name: 'to_user_uid') required String toUserUid,
    @JsonKey(name: 'event_uid') required String eventUid,
    @JsonKey(name: 'original_join_request_uid') required String originalJoinRequestUid
  }) = _GroupJoinRequestStamp;

  factory GroupJoinRequestStamp.fromJson(Map<String, Object?> json)
      => _$GroupJoinRequestStampFromJson(json);
}