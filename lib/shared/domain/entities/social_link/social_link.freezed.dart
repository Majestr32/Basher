// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) {
  return _SocialLink.fromJson(json);
}

/// @nodoc
mixin _$SocialLink {
  @JsonKey(fromJson: _socialFromString, toJson: _socialToString)
  SocialLinks get social => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLinkCopyWith<SocialLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinkCopyWith<$Res> {
  factory $SocialLinkCopyWith(
          SocialLink value, $Res Function(SocialLink) then) =
      _$SocialLinkCopyWithImpl<$Res, SocialLink>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _socialFromString, toJson: _socialToString)
          SocialLinks social,
      String url,
      String nickname});
}

/// @nodoc
class _$SocialLinkCopyWithImpl<$Res, $Val extends SocialLink>
    implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? social = null,
    Object? url = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as SocialLinks,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialLinkCopyWith<$Res>
    implements $SocialLinkCopyWith<$Res> {
  factory _$$_SocialLinkCopyWith(
          _$_SocialLink value, $Res Function(_$_SocialLink) then) =
      __$$_SocialLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _socialFromString, toJson: _socialToString)
          SocialLinks social,
      String url,
      String nickname});
}

/// @nodoc
class __$$_SocialLinkCopyWithImpl<$Res>
    extends _$SocialLinkCopyWithImpl<$Res, _$_SocialLink>
    implements _$$_SocialLinkCopyWith<$Res> {
  __$$_SocialLinkCopyWithImpl(
      _$_SocialLink _value, $Res Function(_$_SocialLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? social = null,
    Object? url = null,
    Object? nickname = null,
  }) {
    return _then(_$_SocialLink(
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as SocialLinks,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialLink with DiagnosticableTreeMixin implements _SocialLink {
  const _$_SocialLink(
      {@JsonKey(fromJson: _socialFromString, toJson: _socialToString)
          required this.social,
      required this.url,
      required this.nickname});

  factory _$_SocialLink.fromJson(Map<String, dynamic> json) =>
      _$$_SocialLinkFromJson(json);

  @override
  @JsonKey(fromJson: _socialFromString, toJson: _socialToString)
  final SocialLinks social;
  @override
  final String url;
  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocialLink(social: $social, url: $url, nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialLink'))
      ..add(DiagnosticsProperty('social', social))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialLink &&
            (identical(other.social, social) || other.social == social) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, social, url, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialLinkCopyWith<_$_SocialLink> get copyWith =>
      __$$_SocialLinkCopyWithImpl<_$_SocialLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialLinkToJson(
      this,
    );
  }
}

abstract class _SocialLink implements SocialLink {
  const factory _SocialLink(
      {@JsonKey(fromJson: _socialFromString, toJson: _socialToString)
          required final SocialLinks social,
      required final String url,
      required final String nickname}) = _$_SocialLink;

  factory _SocialLink.fromJson(Map<String, dynamic> json) =
      _$_SocialLink.fromJson;

  @override
  @JsonKey(fromJson: _socialFromString, toJson: _socialToString)
  SocialLinks get social;
  @override
  String get url;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_SocialLinkCopyWith<_$_SocialLink> get copyWith =>
      throw _privateConstructorUsedError;
}
