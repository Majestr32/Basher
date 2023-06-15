// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterSettings _$$_FilterSettingsFromJson(Map<String, dynamic> json) =>
    _$_FilterSettings(
      category: $enumDecodeNullable(_$EventMusicsEnumMap, json['category']),
      minDate: json['minDate'] == null
          ? null
          : DateTime.parse(json['minDate'] as String),
      maxDate: json['maxDate'] == null
          ? null
          : DateTime.parse(json['maxDate'] as String),
      requestRequired: json['requestRequired'] as bool?,
      searchQuery: json['searchQuery'] as String? ?? '',
    );

Map<String, dynamic> _$$_FilterSettingsToJson(_$_FilterSettings instance) =>
    <String, dynamic>{
      'category': _$EventMusicsEnumMap[instance.category],
      'minDate': instance.minDate?.toIso8601String(),
      'maxDate': instance.maxDate?.toIso8601String(),
      'requestRequired': instance.requestRequired,
      'searchQuery': instance.searchQuery,
    };

const _$EventMusicsEnumMap = {
  EventMusics.clubNights: 'clubNights',
  EventMusics.fashion: 'fashion',
  EventMusics.dinners: 'dinners',
  EventMusics.other: 'other',
};
