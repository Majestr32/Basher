import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_to_event_metadata.freezed.dart';

@freezed
class UserToEventMetadata with _$UserToEventMetadata {
  const factory UserToEventMetadata({
    required bool bought,
    required bool sentRequest,
    required bool acceptedRequest,
  }) = _UserToEventMetadata;
}