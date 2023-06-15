// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsReport _$StatisticsReportFromJson(Map<String, dynamic> json) {
  return _StatisticsReport.fromJson(json);
}

/// @nodoc
mixin _$StatisticsReport {
  @JsonKey(name: 'charges_count')
  int get chargesCount => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'total_amount',
      includeToJson: false,
      fromJson: _convertCentsToAmount)
  double get totalAmount => throw _privateConstructorUsedError;
  List<GraphStatisticsRecord> get weeklyEarnings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsReportCopyWith<StatisticsReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsReportCopyWith<$Res> {
  factory $StatisticsReportCopyWith(
          StatisticsReport value, $Res Function(StatisticsReport) then) =
      _$StatisticsReportCopyWithImpl<$Res, StatisticsReport>;
  @useResult
  $Res call(
      {@JsonKey(name: 'charges_count')
          int chargesCount,
      @JsonKey(name: 'total_amount', includeToJson: false, fromJson: _convertCentsToAmount)
          double totalAmount,
      List<GraphStatisticsRecord> weeklyEarnings});
}

/// @nodoc
class _$StatisticsReportCopyWithImpl<$Res, $Val extends StatisticsReport>
    implements $StatisticsReportCopyWith<$Res> {
  _$StatisticsReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargesCount = null,
    Object? totalAmount = null,
    Object? weeklyEarnings = null,
  }) {
    return _then(_value.copyWith(
      chargesCount: null == chargesCount
          ? _value.chargesCount
          : chargesCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyEarnings: null == weeklyEarnings
          ? _value.weeklyEarnings
          : weeklyEarnings // ignore: cast_nullable_to_non_nullable
              as List<GraphStatisticsRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticsReportCopyWith<$Res>
    implements $StatisticsReportCopyWith<$Res> {
  factory _$$_StatisticsReportCopyWith(
          _$_StatisticsReport value, $Res Function(_$_StatisticsReport) then) =
      __$$_StatisticsReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'charges_count')
          int chargesCount,
      @JsonKey(name: 'total_amount', includeToJson: false, fromJson: _convertCentsToAmount)
          double totalAmount,
      List<GraphStatisticsRecord> weeklyEarnings});
}

/// @nodoc
class __$$_StatisticsReportCopyWithImpl<$Res>
    extends _$StatisticsReportCopyWithImpl<$Res, _$_StatisticsReport>
    implements _$$_StatisticsReportCopyWith<$Res> {
  __$$_StatisticsReportCopyWithImpl(
      _$_StatisticsReport _value, $Res Function(_$_StatisticsReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargesCount = null,
    Object? totalAmount = null,
    Object? weeklyEarnings = null,
  }) {
    return _then(_$_StatisticsReport(
      chargesCount: null == chargesCount
          ? _value.chargesCount
          : chargesCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyEarnings: null == weeklyEarnings
          ? _value._weeklyEarnings
          : weeklyEarnings // ignore: cast_nullable_to_non_nullable
              as List<GraphStatisticsRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsReport
    with DiagnosticableTreeMixin
    implements _StatisticsReport {
  const _$_StatisticsReport(
      {@JsonKey(name: 'charges_count')
          required this.chargesCount,
      @JsonKey(name: 'total_amount', includeToJson: false, fromJson: _convertCentsToAmount)
          required this.totalAmount,
      required final List<GraphStatisticsRecord> weeklyEarnings})
      : _weeklyEarnings = weeklyEarnings;

  factory _$_StatisticsReport.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsReportFromJson(json);

  @override
  @JsonKey(name: 'charges_count')
  final int chargesCount;
  @override
  @JsonKey(
      name: 'total_amount',
      includeToJson: false,
      fromJson: _convertCentsToAmount)
  final double totalAmount;
  final List<GraphStatisticsRecord> _weeklyEarnings;
  @override
  List<GraphStatisticsRecord> get weeklyEarnings {
    if (_weeklyEarnings is EqualUnmodifiableListView) return _weeklyEarnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyEarnings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatisticsReport(chargesCount: $chargesCount, totalAmount: $totalAmount, weeklyEarnings: $weeklyEarnings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatisticsReport'))
      ..add(DiagnosticsProperty('chargesCount', chargesCount))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('weeklyEarnings', weeklyEarnings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsReport &&
            (identical(other.chargesCount, chargesCount) ||
                other.chargesCount == chargesCount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality()
                .equals(other._weeklyEarnings, _weeklyEarnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chargesCount, totalAmount,
      const DeepCollectionEquality().hash(_weeklyEarnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsReportCopyWith<_$_StatisticsReport> get copyWith =>
      __$$_StatisticsReportCopyWithImpl<_$_StatisticsReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsReportToJson(
      this,
    );
  }
}

abstract class _StatisticsReport implements StatisticsReport {
  const factory _StatisticsReport(
      {@JsonKey(name: 'charges_count')
          required final int chargesCount,
      @JsonKey(name: 'total_amount', includeToJson: false, fromJson: _convertCentsToAmount)
          required final double totalAmount,
      required final List<GraphStatisticsRecord> weeklyEarnings}) = _$_StatisticsReport;

  factory _StatisticsReport.fromJson(Map<String, dynamic> json) =
      _$_StatisticsReport.fromJson;

  @override
  @JsonKey(name: 'charges_count')
  int get chargesCount;
  @override
  @JsonKey(
      name: 'total_amount',
      includeToJson: false,
      fromJson: _convertCentsToAmount)
  double get totalAmount;
  @override
  List<GraphStatisticsRecord> get weeklyEarnings;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsReportCopyWith<_$_StatisticsReport> get copyWith =>
      throw _privateConstructorUsedError;
}
