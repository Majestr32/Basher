
import 'package:allxclusive/core/utills/fb_timestamp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/user/user.dart';

part 'ticket_stamp.freezed.dart';
part 'ticket_stamp.g.dart';

@freezed
class TicketStamp with _$TicketStamp {
  const factory TicketStamp({
    @JsonKey(name: 'qr_core') required String qrCode,
    @JsonKey(name: 'buyer_uid') required String buyerUid,
    @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson) required Gender gender,
    @JsonKey(name: 'ticket_uid') required String ticketUid,
    @JsonKey(name: 'created_at', toJson: dateToTimestamp, fromJson: timestampToDateTime) required DateTime createdAt
  }) = _TicketStamp;

  factory TicketStamp.fromJson(Map<String, Object?> json)
      => _$TicketStampFromJson(json);
}

Gender _genderFromJson(String gender){
  return Gender.fromString(gender);
}



String _genderToJson(Gender gender){
  return gender.str;
}