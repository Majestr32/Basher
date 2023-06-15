// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_statistics_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphStatisticsRecord _$$_GraphStatisticsRecordFromJson(
        Map<String, dynamic> json) =>
    _$_GraphStatisticsRecord(
      date: json['date'] as String,
      amount: _convertCentsToAmount(json['amount'] as int),
    );

Map<String, dynamic> _$$_GraphStatisticsRecordToJson(
        _$_GraphStatisticsRecord instance) =>
    <String, dynamic>{
      'date': instance.date,
      'amount': instance.amount,
    };
