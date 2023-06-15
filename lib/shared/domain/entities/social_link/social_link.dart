import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'social_link.freezed.dart';
part 'social_link.g.dart';

enum SocialLinks{
  instagram('Instagram','assets/socials/instagram.svg'),
  youtube('Youtube','assets/socials/youtube.svg'),
  facebook('Facebook','assets/socials/facebook.svg'),
  twitter('Twitter','assets/socials/twitter.svg'),
  tiktok('Tiktok','assets/socials/tiktok.svg');

  final String name;
  final String assetImg;
  const SocialLinks(this.name, this.assetImg);

  static SocialLinks fromName(String val) => SocialLinks.values.firstWhere((e) => e.name == val);
}

@freezed
class SocialLink with _$SocialLink {
  const factory SocialLink({
    @JsonKey(fromJson: _socialFromString, toJson: _socialToString) required SocialLinks social,
    required String url,
    required String nickname
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, Object?> json)
      => _$SocialLinkFromJson(json);
}

SocialLinks _socialFromString(String social){
  return SocialLinks.fromName(social);
}
String _socialToString(SocialLinks social){
  return social.name;
}