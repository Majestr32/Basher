// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      uid: json['uid'] as String?,
      name: json['name'] as String,
      organiserUid: json['organiser_uid'] as String,
      imgPath: json['img_path'] as String?,
      description: json['description'] as String,
      date: _fromTimestamp(json['date']),
      status: json['status'] == null
          ? EventStatus.unpublished
          : EventStatus.fromString(json['status'] as String),
      startTime: _fromTimestamp(json['start_time']),
      endTime: _fromTimestamp(json['end_time']),
      createdAt: _fromTimestamp(json['created_at']),
      location: json['location'] as String,
      prioritizedMusic: json['prioritized_music'] == null
          ? EventMusics.clubNights
          : EventMusics.fromString(json['prioritized_music'] as String),
      placeName: json['place_name'] as String,
      drinksEats: json['drinks_eats'] as String?,
      termsLink: json['terms_link'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      ln: (json['ln'] as num?)?.toDouble(),
      confirmationRequired: json['confirmation_required'] as bool,
      peopleCount: json['people_count'] as int?,
      manCount: json['man_count'] as int?,
      womanCount: json['woman_count'] as int?,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'organiser_uid': instance.organiserUid,
      'img_path': instance.imgPath,
      'description': instance.description,
      'date': _toDate(instance.date),
      'status': _EventModelStatusToJson(instance.status),
      'start_time': _toDate(instance.startTime),
      'end_time': _toDate(instance.endTime),
      'created_at': _toDateNullable(instance.createdAt),
      'location': instance.location,
      'prioritized_music': _fromMusicToString(instance.prioritizedMusic),
      'place_name': instance.placeName,
      'drinks_eats': instance.drinksEats,
      'terms_link': instance.termsLink,
      'lat': instance.lat,
      'ln': instance.ln,
      'confirmation_required': instance.confirmationRequired,
      'people_count': instance.peopleCount,
      'man_count': instance.manCount,
      'woman_count': instance.womanCount,
    };
