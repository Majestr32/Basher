// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get highlights => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;
  List<SocialLink> get socials => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  Gender get gender => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String bio,
      String highlights,
      DateTime dob,
      List<SocialLink> socials,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          Gender gender,
      String? phone,
      String country,
      String city,
      @JsonKey(name: 'photo_url')
          String? photoUrl,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
          DateTime? createdAt,
      @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
          Role role});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? bio = null,
    Object? highlights = null,
    Object? dob = null,
    Object? socials = null,
    Object? gender = null,
    Object? phone = freezed,
    Object? country = null,
    Object? city = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      socials: null == socials
          ? _value.socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<SocialLink>,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String bio,
      String highlights,
      DateTime dob,
      List<SocialLink> socials,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          Gender gender,
      String? phone,
      String country,
      String city,
      @JsonKey(name: 'photo_url')
          String? photoUrl,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
          DateTime? createdAt,
      @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
          Role role});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? bio = null,
    Object? highlights = null,
    Object? dob = null,
    Object? socials = null,
    Object? gender = null,
    Object? phone = freezed,
    Object? country = null,
    Object? city = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? role = null,
  }) {
    return _then(_$_User(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      socials: null == socials
          ? _value._socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<SocialLink>,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {required this.uid,
      required this.name,
      this.bio = 'New member',
      this.highlights = 'Top party reveller',
      required this.dob,
      final List<SocialLink> socials = const [],
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          required this.gender,
      this.phone,
      required this.country,
      required this.city,
      @JsonKey(name: 'photo_url')
          this.photoUrl,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
          this.createdAt,
      @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
          required this.role})
      : _socials = socials,
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  @JsonKey()
  final String bio;
  @override
  @JsonKey()
  final String highlights;
  @override
  final DateTime dob;
  final List<SocialLink> _socials;
  @override
  @JsonKey()
  List<SocialLink> get socials {
    if (_socials is EqualUnmodifiableListView) return _socials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socials);
  }

  @override
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  final Gender gender;
  @override
  final String? phone;
  @override
  final String country;
  @override
  final String city;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
  final Role role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(uid: $uid, name: $name, bio: $bio, highlights: $highlights, dob: $dob, socials: $socials, gender: $gender, phone: $phone, country: $country, city: $city, photoUrl: $photoUrl, createdAt: $createdAt, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('highlights', highlights))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('socials', socials))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.highlights, highlights) ||
                other.highlights == highlights) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            const DeepCollectionEquality().equals(other._socials, _socials) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      bio,
      highlights,
      dob,
      const DeepCollectionEquality().hash(_socials),
      gender,
      phone,
      country,
      city,
      photoUrl,
      createdAt,
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String uid,
      required final String name,
      final String bio,
      final String highlights,
      required final DateTime dob,
      final List<SocialLink> socials,
      @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
          required final Gender gender,
      final String? phone,
      required final String country,
      required final String city,
      @JsonKey(name: 'photo_url')
          final String? photoUrl,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
          final DateTime? createdAt,
      @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
          required final Role role}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get bio;
  @override
  String get highlights;
  @override
  DateTime get dob;
  @override
  List<SocialLink> get socials;
  @override
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  Gender get gender;
  @override
  String? get phone;
  @override
  String get country;
  @override
  String get city;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
