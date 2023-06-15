// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  @JsonKey(name: 'uid')
  String? get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'organiser_uid')
  String get organiserUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_path')
  String? get imgPath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
  EventStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'prioritized_music',
      fromJson: EventMusics.fromString,
      toJson: _fromMusicToString)
  EventMusics get prioritizedMusic => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'drinks_eats')
  String? get drinksEats => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_link')
  String? get termsLink => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get ln => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_required')
  bool get confirmationRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'people_count')
  int? get peopleCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'man_count')
  int? get manCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'woman_count')
  int? get womanCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uid')
          String? uid,
      String name,
      @JsonKey(name: 'organiser_uid')
          String organiserUid,
      @JsonKey(name: 'img_path')
          String? imgPath,
      String description,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
          DateTime date,
      @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
          EventStatus status,
      @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
          DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
          DateTime endTime,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
          DateTime? createdAt,
      String location,
      @JsonKey(name: 'prioritized_music', fromJson: EventMusics.fromString, toJson: _fromMusicToString)
          EventMusics prioritizedMusic,
      @JsonKey(name: 'place_name')
          String placeName,
      @JsonKey(name: 'drinks_eats')
          String? drinksEats,
      @JsonKey(name: 'terms_link')
          String? termsLink,
      double? lat,
      double? ln,
      @JsonKey(name: 'confirmation_required')
          bool confirmationRequired,
      @JsonKey(name: 'people_count')
          int? peopleCount,
      @JsonKey(name: 'man_count')
          int? manCount,
      @JsonKey(name: 'woman_count')
          int? womanCount});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = null,
    Object? organiserUid = null,
    Object? imgPath = freezed,
    Object? description = null,
    Object? date = null,
    Object? status = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? createdAt = freezed,
    Object? location = null,
    Object? prioritizedMusic = null,
    Object? placeName = null,
    Object? drinksEats = freezed,
    Object? termsLink = freezed,
    Object? lat = freezed,
    Object? ln = freezed,
    Object? confirmationRequired = null,
    Object? peopleCount = freezed,
    Object? manCount = freezed,
    Object? womanCount = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organiserUid: null == organiserUid
          ? _value.organiserUid
          : organiserUid // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      prioritizedMusic: null == prioritizedMusic
          ? _value.prioritizedMusic
          : prioritizedMusic // ignore: cast_nullable_to_non_nullable
              as EventMusics,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      drinksEats: freezed == drinksEats
          ? _value.drinksEats
          : drinksEats // ignore: cast_nullable_to_non_nullable
              as String?,
      termsLink: freezed == termsLink
          ? _value.termsLink
          : termsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      ln: freezed == ln
          ? _value.ln
          : ln // ignore: cast_nullable_to_non_nullable
              as double?,
      confirmationRequired: null == confirmationRequired
          ? _value.confirmationRequired
          : confirmationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      peopleCount: freezed == peopleCount
          ? _value.peopleCount
          : peopleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      manCount: freezed == manCount
          ? _value.manCount
          : manCount // ignore: cast_nullable_to_non_nullable
              as int?,
      womanCount: freezed == womanCount
          ? _value.womanCount
          : womanCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$_EventModelCopyWith(
          _$_EventModel value, $Res Function(_$_EventModel) then) =
      __$$_EventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uid')
          String? uid,
      String name,
      @JsonKey(name: 'organiser_uid')
          String organiserUid,
      @JsonKey(name: 'img_path')
          String? imgPath,
      String description,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
          DateTime date,
      @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
          EventStatus status,
      @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
          DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
          DateTime endTime,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
          DateTime? createdAt,
      String location,
      @JsonKey(name: 'prioritized_music', fromJson: EventMusics.fromString, toJson: _fromMusicToString)
          EventMusics prioritizedMusic,
      @JsonKey(name: 'place_name')
          String placeName,
      @JsonKey(name: 'drinks_eats')
          String? drinksEats,
      @JsonKey(name: 'terms_link')
          String? termsLink,
      double? lat,
      double? ln,
      @JsonKey(name: 'confirmation_required')
          bool confirmationRequired,
      @JsonKey(name: 'people_count')
          int? peopleCount,
      @JsonKey(name: 'man_count')
          int? manCount,
      @JsonKey(name: 'woman_count')
          int? womanCount});
}

/// @nodoc
class __$$_EventModelCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$_EventModel>
    implements _$$_EventModelCopyWith<$Res> {
  __$$_EventModelCopyWithImpl(
      _$_EventModel _value, $Res Function(_$_EventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = null,
    Object? organiserUid = null,
    Object? imgPath = freezed,
    Object? description = null,
    Object? date = null,
    Object? status = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? createdAt = freezed,
    Object? location = null,
    Object? prioritizedMusic = null,
    Object? placeName = null,
    Object? drinksEats = freezed,
    Object? termsLink = freezed,
    Object? lat = freezed,
    Object? ln = freezed,
    Object? confirmationRequired = null,
    Object? peopleCount = freezed,
    Object? manCount = freezed,
    Object? womanCount = freezed,
  }) {
    return _then(_$_EventModel(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organiserUid: null == organiserUid
          ? _value.organiserUid
          : organiserUid // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      prioritizedMusic: null == prioritizedMusic
          ? _value.prioritizedMusic
          : prioritizedMusic // ignore: cast_nullable_to_non_nullable
              as EventMusics,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      drinksEats: freezed == drinksEats
          ? _value.drinksEats
          : drinksEats // ignore: cast_nullable_to_non_nullable
              as String?,
      termsLink: freezed == termsLink
          ? _value.termsLink
          : termsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      ln: freezed == ln
          ? _value.ln
          : ln // ignore: cast_nullable_to_non_nullable
              as double?,
      confirmationRequired: null == confirmationRequired
          ? _value.confirmationRequired
          : confirmationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      peopleCount: freezed == peopleCount
          ? _value.peopleCount
          : peopleCount // ignore: cast_nullable_to_non_nullable
              as int?,
      manCount: freezed == manCount
          ? _value.manCount
          : manCount // ignore: cast_nullable_to_non_nullable
              as int?,
      womanCount: freezed == womanCount
          ? _value.womanCount
          : womanCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventModel extends _EventModel {
  const _$_EventModel(
      {@JsonKey(name: 'uid')
          this.uid,
      required this.name,
      @JsonKey(name: 'organiser_uid')
          required this.organiserUid,
      @JsonKey(name: 'img_path')
          this.imgPath,
      required this.description,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
          required this.date,
      @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
          this.status = EventStatus.unpublished,
      @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
          required this.startTime,
      @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
          required this.endTime,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
          this.createdAt,
      required this.location,
      @JsonKey(name: 'prioritized_music', fromJson: EventMusics.fromString, toJson: _fromMusicToString)
          this.prioritizedMusic = EventMusics.clubNights,
      @JsonKey(name: 'place_name')
          required this.placeName,
      @JsonKey(name: 'drinks_eats')
          this.drinksEats,
      @JsonKey(name: 'terms_link')
          this.termsLink,
      this.lat,
      this.ln,
      @JsonKey(name: 'confirmation_required')
          required this.confirmationRequired,
      @JsonKey(name: 'people_count')
          this.peopleCount,
      @JsonKey(name: 'man_count')
          this.manCount,
      @JsonKey(name: 'woman_count')
          this.womanCount})
      : super._();

  factory _$_EventModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventModelFromJson(json);

  @override
  @JsonKey(name: 'uid')
  final String? uid;
  @override
  final String name;
  @override
  @JsonKey(name: 'organiser_uid')
  final String organiserUid;
  @override
  @JsonKey(name: 'img_path')
  final String? imgPath;
  @override
  final String description;
  @override
  @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
  final DateTime date;
  @override
  @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
  final EventStatus status;
  @override
  @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
  final DateTime endTime;
  @override
  @JsonKey(
      name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
  final DateTime? createdAt;
  @override
  final String location;
  @override
  @JsonKey(
      name: 'prioritized_music',
      fromJson: EventMusics.fromString,
      toJson: _fromMusicToString)
  final EventMusics prioritizedMusic;
  @override
  @JsonKey(name: 'place_name')
  final String placeName;
  @override
  @JsonKey(name: 'drinks_eats')
  final String? drinksEats;
  @override
  @JsonKey(name: 'terms_link')
  final String? termsLink;
  @override
  final double? lat;
  @override
  final double? ln;
  @override
  @JsonKey(name: 'confirmation_required')
  final bool confirmationRequired;
  @override
  @JsonKey(name: 'people_count')
  final int? peopleCount;
  @override
  @JsonKey(name: 'man_count')
  final int? manCount;
  @override
  @JsonKey(name: 'woman_count')
  final int? womanCount;

  @override
  String toString() {
    return 'EventModel(uid: $uid, name: $name, organiserUid: $organiserUid, imgPath: $imgPath, description: $description, date: $date, status: $status, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, location: $location, prioritizedMusic: $prioritizedMusic, placeName: $placeName, drinksEats: $drinksEats, termsLink: $termsLink, lat: $lat, ln: $ln, confirmationRequired: $confirmationRequired, peopleCount: $peopleCount, manCount: $manCount, womanCount: $womanCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organiserUid, organiserUid) ||
                other.organiserUid == organiserUid) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.prioritizedMusic, prioritizedMusic) ||
                other.prioritizedMusic == prioritizedMusic) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.drinksEats, drinksEats) ||
                other.drinksEats == drinksEats) &&
            (identical(other.termsLink, termsLink) ||
                other.termsLink == termsLink) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.ln, ln) || other.ln == ln) &&
            (identical(other.confirmationRequired, confirmationRequired) ||
                other.confirmationRequired == confirmationRequired) &&
            (identical(other.peopleCount, peopleCount) ||
                other.peopleCount == peopleCount) &&
            (identical(other.manCount, manCount) ||
                other.manCount == manCount) &&
            (identical(other.womanCount, womanCount) ||
                other.womanCount == womanCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        name,
        organiserUid,
        imgPath,
        description,
        date,
        status,
        startTime,
        endTime,
        createdAt,
        location,
        prioritizedMusic,
        placeName,
        drinksEats,
        termsLink,
        lat,
        ln,
        confirmationRequired,
        peopleCount,
        manCount,
        womanCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventModelCopyWith<_$_EventModel> get copyWith =>
      __$$_EventModelCopyWithImpl<_$_EventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventModelToJson(
      this,
    );
  }
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
      {@JsonKey(name: 'uid')
          final String? uid,
      required final String name,
      @JsonKey(name: 'organiser_uid')
          required final String organiserUid,
      @JsonKey(name: 'img_path')
          final String? imgPath,
      required final String description,
      @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
          required final DateTime date,
      @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
          final EventStatus status,
      @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
          required final DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
          required final DateTime endTime,
      @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
          final DateTime? createdAt,
      required final String location,
      @JsonKey(name: 'prioritized_music', fromJson: EventMusics.fromString, toJson: _fromMusicToString)
          final EventMusics prioritizedMusic,
      @JsonKey(name: 'place_name')
          required final String placeName,
      @JsonKey(name: 'drinks_eats')
          final String? drinksEats,
      @JsonKey(name: 'terms_link')
          final String? termsLink,
      final double? lat,
      final double? ln,
      @JsonKey(name: 'confirmation_required')
          required final bool confirmationRequired,
      @JsonKey(name: 'people_count')
          final int? peopleCount,
      @JsonKey(name: 'man_count')
          final int? manCount,
      @JsonKey(name: 'woman_count')
          final int? womanCount}) = _$_EventModel;
  const _EventModel._() : super._();

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$_EventModel.fromJson;

  @override
  @JsonKey(name: 'uid')
  String? get uid;
  @override
  String get name;
  @override
  @JsonKey(name: 'organiser_uid')
  String get organiserUid;
  @override
  @JsonKey(name: 'img_path')
  String? get imgPath;
  @override
  String get description;
  @override
  @JsonKey(fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get date;
  @override
  @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson)
  EventStatus get status;
  @override
  @JsonKey(name: 'start_time', fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get startTime;
  @override
  @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate)
  DateTime get endTime;
  @override
  @JsonKey(
      name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable)
  DateTime? get createdAt;
  @override
  String get location;
  @override
  @JsonKey(
      name: 'prioritized_music',
      fromJson: EventMusics.fromString,
      toJson: _fromMusicToString)
  EventMusics get prioritizedMusic;
  @override
  @JsonKey(name: 'place_name')
  String get placeName;
  @override
  @JsonKey(name: 'drinks_eats')
  String? get drinksEats;
  @override
  @JsonKey(name: 'terms_link')
  String? get termsLink;
  @override
  double? get lat;
  @override
  double? get ln;
  @override
  @JsonKey(name: 'confirmation_required')
  bool get confirmationRequired;
  @override
  @JsonKey(name: 'people_count')
  int? get peopleCount;
  @override
  @JsonKey(name: 'man_count')
  int? get manCount;
  @override
  @JsonKey(name: 'woman_count')
  int? get womanCount;
  @override
  @JsonKey(ignore: true)
  _$$_EventModelCopyWith<_$_EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
