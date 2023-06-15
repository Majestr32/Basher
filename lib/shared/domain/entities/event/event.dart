
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const Event._();

  const factory Event({
    required EventModel eventModel,
    required List<String> friendsUid,
  }) = _Event;

  @override
  String toString() {
    return eventModel.location;
  }
}

