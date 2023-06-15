// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterSettings _$FilterSettingsFromJson(Map<String, dynamic> json) {
  return _FilterSettings.fromJson(json);
}

/// @nodoc
mixin _$FilterSettings {
  EventMusics? get category => throw _privateConstructorUsedError;
  DateTime? get minDate => throw _privateConstructorUsedError;
  DateTime? get maxDate => throw _privateConstructorUsedError;
  bool? get requestRequired => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterSettingsCopyWith<FilterSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSettingsCopyWith<$Res> {
  factory $FilterSettingsCopyWith(
          FilterSettings value, $Res Function(FilterSettings) then) =
      _$FilterSettingsCopyWithImpl<$Res, FilterSettings>;
  @useResult
  $Res call(
      {EventMusics? category,
      DateTime? minDate,
      DateTime? maxDate,
      bool? requestRequired,
      String searchQuery});
}

/// @nodoc
class _$FilterSettingsCopyWithImpl<$Res, $Val extends FilterSettings>
    implements $FilterSettingsCopyWith<$Res> {
  _$FilterSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? minDate = freezed,
    Object? maxDate = freezed,
    Object? requestRequired = freezed,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventMusics?,
      minDate: freezed == minDate
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxDate: freezed == maxDate
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestRequired: freezed == requestRequired
          ? _value.requestRequired
          : requestRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterSettingsCopyWith<$Res>
    implements $FilterSettingsCopyWith<$Res> {
  factory _$$_FilterSettingsCopyWith(
          _$_FilterSettings value, $Res Function(_$_FilterSettings) then) =
      __$$_FilterSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventMusics? category,
      DateTime? minDate,
      DateTime? maxDate,
      bool? requestRequired,
      String searchQuery});
}

/// @nodoc
class __$$_FilterSettingsCopyWithImpl<$Res>
    extends _$FilterSettingsCopyWithImpl<$Res, _$_FilterSettings>
    implements _$$_FilterSettingsCopyWith<$Res> {
  __$$_FilterSettingsCopyWithImpl(
      _$_FilterSettings _value, $Res Function(_$_FilterSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? minDate = freezed,
    Object? maxDate = freezed,
    Object? requestRequired = freezed,
    Object? searchQuery = null,
  }) {
    return _then(_$_FilterSettings(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventMusics?,
      minDate: freezed == minDate
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxDate: freezed == maxDate
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestRequired: freezed == requestRequired
          ? _value.requestRequired
          : requestRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterSettings extends _FilterSettings with DiagnosticableTreeMixin {
  const _$_FilterSettings(
      {this.category,
      this.minDate,
      this.maxDate,
      this.requestRequired,
      this.searchQuery = ''})
      : super._();

  factory _$_FilterSettings.fromJson(Map<String, dynamic> json) =>
      _$$_FilterSettingsFromJson(json);

  @override
  final EventMusics? category;
  @override
  final DateTime? minDate;
  @override
  final DateTime? maxDate;
  @override
  final bool? requestRequired;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterSettings(category: $category, minDate: $minDate, maxDate: $maxDate, requestRequired: $requestRequired, searchQuery: $searchQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterSettings'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('minDate', minDate))
      ..add(DiagnosticsProperty('maxDate', maxDate))
      ..add(DiagnosticsProperty('requestRequired', requestRequired))
      ..add(DiagnosticsProperty('searchQuery', searchQuery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterSettings &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.minDate, minDate) || other.minDate == minDate) &&
            (identical(other.maxDate, maxDate) || other.maxDate == maxDate) &&
            (identical(other.requestRequired, requestRequired) ||
                other.requestRequired == requestRequired) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, minDate, maxDate, requestRequired, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterSettingsCopyWith<_$_FilterSettings> get copyWith =>
      __$$_FilterSettingsCopyWithImpl<_$_FilterSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterSettingsToJson(
      this,
    );
  }
}

abstract class _FilterSettings extends FilterSettings {
  const factory _FilterSettings(
      {final EventMusics? category,
      final DateTime? minDate,
      final DateTime? maxDate,
      final bool? requestRequired,
      final String searchQuery}) = _$_FilterSettings;
  const _FilterSettings._() : super._();

  factory _FilterSettings.fromJson(Map<String, dynamic> json) =
      _$_FilterSettings.fromJson;

  @override
  EventMusics? get category;
  @override
  DateTime? get minDate;
  @override
  DateTime? get maxDate;
  @override
  bool? get requestRequired;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$_FilterSettingsCopyWith<_$_FilterSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
