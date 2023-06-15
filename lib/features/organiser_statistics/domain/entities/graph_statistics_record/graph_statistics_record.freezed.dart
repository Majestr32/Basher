// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_statistics_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphStatisticsRecord _$GraphStatisticsRecordFromJson(
    Map<String, dynamic> json) {
  return _GraphStatisticsRecord.fromJson(json);
}

/// @nodoc
mixin _$GraphStatisticsRecord {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphStatisticsRecordCopyWith<GraphStatisticsRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphStatisticsRecordCopyWith<$Res> {
  factory $GraphStatisticsRecordCopyWith(GraphStatisticsRecord value,
          $Res Function(GraphStatisticsRecord) then) =
      _$GraphStatisticsRecordCopyWithImpl<$Res, GraphStatisticsRecord>;
  @useResult
  $Res call(
      {String date,
      @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
          double amount});
}

/// @nodoc
class _$GraphStatisticsRecordCopyWithImpl<$Res,
        $Val extends GraphStatisticsRecord>
    implements $GraphStatisticsRecordCopyWith<$Res> {
  _$GraphStatisticsRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphStatisticsRecordCopyWith<$Res>
    implements $GraphStatisticsRecordCopyWith<$Res> {
  factory _$$_GraphStatisticsRecordCopyWith(_$_GraphStatisticsRecord value,
          $Res Function(_$_GraphStatisticsRecord) then) =
      __$$_GraphStatisticsRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
          double amount});
}

/// @nodoc
class __$$_GraphStatisticsRecordCopyWithImpl<$Res>
    extends _$GraphStatisticsRecordCopyWithImpl<$Res, _$_GraphStatisticsRecord>
    implements _$$_GraphStatisticsRecordCopyWith<$Res> {
  __$$_GraphStatisticsRecordCopyWithImpl(_$_GraphStatisticsRecord _value,
      $Res Function(_$_GraphStatisticsRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$_GraphStatisticsRecord(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphStatisticsRecord extends _GraphStatisticsRecord
    with DiagnosticableTreeMixin {
  const _$_GraphStatisticsRecord(
      {required this.date,
      @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
          required this.amount})
      : super._();

  factory _$_GraphStatisticsRecord.fromJson(Map<String, dynamic> json) =>
      _$$_GraphStatisticsRecordFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
  final double amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GraphStatisticsRecord(date: $date, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GraphStatisticsRecord'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphStatisticsRecord &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphStatisticsRecordCopyWith<_$_GraphStatisticsRecord> get copyWith =>
      __$$_GraphStatisticsRecordCopyWithImpl<_$_GraphStatisticsRecord>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphStatisticsRecordToJson(
      this,
    );
  }
}

abstract class _GraphStatisticsRecord extends GraphStatisticsRecord {
  const factory _GraphStatisticsRecord(
      {required final String date,
      @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
          required final double amount}) = _$_GraphStatisticsRecord;
  const _GraphStatisticsRecord._() : super._();

  factory _GraphStatisticsRecord.fromJson(Map<String, dynamic> json) =
      _$_GraphStatisticsRecord.fromJson;

  @override
  String get date;
  @override
  @JsonKey(includeToJson: false, fromJson: _convertCentsToAmount)
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_GraphStatisticsRecordCopyWith<_$_GraphStatisticsRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
