import 'package:allxclusive/features/organiser_statistics/domain/entities/graph_statistics_record/graph_statistics_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'statistics_report.freezed.dart';
part 'statistics_report.g.dart';

@freezed
class StatisticsReport with _$StatisticsReport {
  const factory StatisticsReport({
    @JsonKey(name: 'charges_count')required int chargesCount,
    @JsonKey(name: 'total_amount', includeToJson: false, fromJson: _convertCentsToAmount) required double totalAmount,
    required List<GraphStatisticsRecord> weeklyEarnings,
  }) = _StatisticsReport;

  factory StatisticsReport.fromJson(Map<String, Object?> json)
      => _$StatisticsReportFromJson(json);
}

double _convertCentsToAmount(int val){
  return val.toDouble() / 100;
}