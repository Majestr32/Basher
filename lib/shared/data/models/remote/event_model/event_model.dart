
import 'package:allxclusive/core/theme/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'event_model.freezed.dart';
part 'event_model.g.dart';

enum EventMusics{
  clubNights('Club nights/Tables'),
  fashion('Fashion'),
  dinners('Dinners'),
  other('Other');

  static EventMusics fromString(String val) => EventMusics.values.firstWhere((e) => e.name == val, orElse: () => EventMusics.clubNights);

  final String name;
  const EventMusics(this.name);
}
enum EventStatus{
  unpublished('Draft', Color(0xFFFFFFFF)),
  published('Active', Color(0xFF5E5CE6)),
  finished('Finished', Color(0xFF80499A));

  final String name;
  final Color color;

  static EventStatus fromString(String val) => EventStatus.values.firstWhere((e) => e.name == val, orElse: () => EventStatus.unpublished);

  const EventStatus(this.name, this.color);
}
@freezed
class EventModel with _$EventModel {
  const EventModel._();

  int leftToDistribute(int distributed) => totalMembers - distributed;
  int get totalMembers => peopleCount != null ? peopleCount! : manCount! + womanCount!;

  const factory EventModel({
    @JsonKey(name: 'uid') String? uid,
    required String name,
    @JsonKey(name: 'organiser_uid') required String organiserUid,
    @JsonKey(name: 'img_path') String? imgPath,
    required String description,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toDate) required DateTime date,
    @Default(EventStatus.unpublished) @JsonKey(fromJson: EventStatus.fromString, toJson: _EventModelStatusToJson) EventStatus status,
    @JsonKey(name: 'start_time', fromJson: _fromTimestamp,  toJson: _toDate) required DateTime startTime,
    @JsonKey(name: 'end_time', fromJson: _fromTimestamp, toJson: _toDate) required DateTime endTime,
    @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toDateNullable) DateTime? createdAt,
    required String location,
    @Default(EventMusics.clubNights) @JsonKey(name: 'prioritized_music', fromJson: EventMusics.fromString, toJson: _fromMusicToString) EventMusics prioritizedMusic,
    @JsonKey(name: 'place_name') required String placeName,
    @JsonKey(name: 'drinks_eats') String? drinksEats,
    @JsonKey(name: 'terms_link') String? termsLink,
    double? lat,
    double? ln,
    @JsonKey(name: 'confirmation_required') required bool confirmationRequired,
    @JsonKey(name: 'people_count') int? peopleCount,
    @JsonKey(name: 'man_count') int? manCount,
    @JsonKey(name: 'woman_count') int? womanCount,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json)
      => _$EventModelFromJson(json);
}

String _fromMusicToString(EventMusics music){
  return music.name;
}

String _EventModelStatusToJson(EventStatus val){
  return val.name;
}

DateTime _fromTimestamp(dynamic val){
  return val.toDate();
}

Timestamp _toDate(DateTime date){
  return Timestamp.fromDate(date);
}

dynamic _toDateNullable(dynamic date){
  return Timestamp.fromDate(date ?? DateTime.now());
}

