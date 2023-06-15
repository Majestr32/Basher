import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../shared/data/models/remote/event_model/event_model.dart';

part 'filter_settings.freezed.dart';
part 'filter_settings.g.dart';

@freezed
class FilterSettings with _$FilterSettings {
  const FilterSettings._();

  bool get hasFilters => category != null || minDate != null || maxDate != null || searchQuery.isNotEmpty || requestRequired != null;

  const factory FilterSettings({
    EventMusics? category,
    DateTime? minDate,
    DateTime? maxDate,
    bool? requestRequired,
    @Default('') String searchQuery
  }) = _FilterSettings;

  factory FilterSettings.fromJson(Map<String, Object?> json)
      => _$FilterSettingsFromJson(json);
}