import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'graph_statistics_record.freezed.dart';
part 'graph_statistics_record.g.dart';

@freezed
class GraphStatisticsRecord with _$GraphStatisticsRecord {
  const GraphStatisticsRecord._();

  String get shortDate => date.split(" ").sublist(1,3).join(" ");

  const factory GraphStatisticsRecord({
    required String date,
    @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount) required double amount
  }) = _GraphStatisticsRecord;

  factory GraphStatisticsRecord.fromJson(Map<String, Object?> json)
      => _$GraphStatisticsRecordFromJson(json);
}

double _convertCentsToAmount(int val){
  return val.toDouble() / 100;
}