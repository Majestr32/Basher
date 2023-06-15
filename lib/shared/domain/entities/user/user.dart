import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../social_link/social_link.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum Gender{
  man('man'),
  woman('woman'),
  other('other');

  final String str;

  static Gender fromString(String value){
    return Gender.values.firstWhere((r) => r.str == value, orElse: () => Gender.woman);
  }

  const Gender(this.str);
}
enum Role{
  reveller('reveller'),
  organiser('organiser');

  final String str;

  static Role fromString(String value){
    return Role.values.firstWhere((r) => r.str == value, orElse: () => Role.organiser);
  }

  Role get opposite => this == Role.reveller ? Role.organiser : Role.reveller;

  const Role(this.str);
}

@freezed
class User with _$User {

  const User._();

  bool get isOrganiser => role == Role.organiser;

  int get age {
    final today = DateTime.now();
    final year = today.year - dob.year;
    final mth = today.month - dob.month;
    final days = today.day - dob.day;
    if(mth < 0 && days < 0){
      return year - 1;
    }
    else {
      return year;
    }
  }

  const factory User({
    required String uid,
    required String name,
    @Default('New member') String bio,
    @Default('Top party reveller') String highlights,
    required DateTime dob,
    @Default([]) List<SocialLink> socials,
    @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson) required Gender gender,
    String? phone,
    required String country,
    required String city,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? createdAt,
    @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) required Role role
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
      => _$UserFromJson(json);
}

DateTime? _fromTimestamp(Timestamp? val){
  return val?.toDate() ?? DateTime.now();
}
Timestamp _toTimestamp(DateTime? val){
  return Timestamp.fromDate(val ?? DateTime.now());
}

Role _roleFromJson(String role){
  return Role.fromString(role);
}

String _roleToJson(Role role){
  return role.str;
}

Gender _genderFromJson(String gender){
  return Gender.fromString(gender);
}

String _genderToJson(Gender gender){
  return gender.str;
}