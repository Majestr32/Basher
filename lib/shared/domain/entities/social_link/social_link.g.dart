// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialLink _$$_SocialLinkFromJson(Map<String, dynamic> json) =>
    _$_SocialLink(
      social: _socialFromString(json['social'] as String),
      url: json['url'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$_SocialLinkToJson(_$_SocialLink instance) =>
    <String, dynamic>{
      'social': _socialToString(instance.social),
      'url': instance.url,
      'nickname': instance.nickname,
    };
