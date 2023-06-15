// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String? ?? 'New member',
      highlights: json['highlights'] as String? ?? 'Top party reveller',
      dob: DateTime.parse(json['dob'] as String),
      socials: (json['socials'] as List<dynamic>?)
              ?.map((e) => SocialLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gender: _genderFromJson(json['gender'] as String),
      phone: json['phone'] as String?,
      country: json['country'] as String,
      city: json['city'] as String,
      photoUrl: json['photo_url'] as String?,
      createdAt: _fromTimestamp(json['created_at'] as Timestamp?),
      role: _roleFromJson(json['role'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'bio': instance.bio,
      'highlights': instance.highlights,
      'dob': instance.dob.toIso8601String(),
      'socials': instance.socials.map((e) => e.toJson()).toList(),
      'gender': _genderToJson(instance.gender),
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'photo_url': instance.photoUrl,
      'created_at': _toTimestamp(instance.createdAt),
      'role': _roleToJson(instance.role),
    };
