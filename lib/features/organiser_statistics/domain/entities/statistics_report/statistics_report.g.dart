// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsReport _$$_StatisticsReportFromJson(Map<String, dynamic> json) =>
    _$_StatisticsReport(
      chargesCount: json['charges_count'] as int,
      totalAmount: _convertCentsToAmount(json['total_amount'] as int),
      weeklyEarnings: (json['weeklyEarnings'] as List<dynamic>)
          .map((e) => GraphStatisticsRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatisticsReportToJson(_$_StatisticsReport instance) =>
    <String, dynamic>{
      'charges_count': instance.chargesCount,
      'total_amount': instance.totalAmount,
      'weeklyEarnings': instance.weeklyEarnings.map((e) => e.toJson()).toList(),
    };
