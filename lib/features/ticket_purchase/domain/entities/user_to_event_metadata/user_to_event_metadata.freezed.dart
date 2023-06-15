// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_to_event_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserToEventMetadata {
  bool get bought => throw _privateConstructorUsedError;
  bool get sentRequest => throw _privateConstructorUsedError;
  bool get acceptedRequest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserToEventMetadataCopyWith<UserToEventMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserToEventMetadataCopyWith<$Res> {
  factory $UserToEventMetadataCopyWith(
          UserToEventMetadata value, $Res Function(UserToEventMetadata) then) =
      _$UserToEventMetadataCopyWithImpl<$Res, UserToEventMetadata>;
  @useResult
  $Res call({bool bought, bool sentRequest, bool acceptedRequest});
}

/// @nodoc
class _$UserToEventMetadataCopyWithImpl<$Res, $Val extends UserToEventMetadata>
    implements $UserToEventMetadataCopyWith<$Res> {
  _$UserToEventMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bought = null,
    Object? sentRequest = null,
    Object? acceptedRequest = null,
  }) {
    return _then(_value.copyWith(
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as bool,
      sentRequest: null == sentRequest
          ? _value.sentRequest
          : sentRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedRequest: null == acceptedRequest
          ? _value.acceptedRequest
          : acceptedRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserToEventMetadataCopyWith<$Res>
    implements $UserToEventMetadataCopyWith<$Res> {
  factory _$$_UserToEventMetadataCopyWith(_$_UserToEventMetadata value,
          $Res Function(_$_UserToEventMetadata) then) =
      __$$_UserToEventMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool bought, bool sentRequest, bool acceptedRequest});
}

/// @nodoc
class __$$_UserToEventMetadataCopyWithImpl<$Res>
    extends _$UserToEventMetadataCopyWithImpl<$Res, _$_UserToEventMetadata>
    implements _$$_UserToEventMetadataCopyWith<$Res> {
  __$$_UserToEventMetadataCopyWithImpl(_$_UserToEventMetadata _value,
      $Res Function(_$_UserToEventMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bought = null,
    Object? sentRequest = null,
    Object? acceptedRequest = null,
  }) {
    return _then(_$_UserToEventMetadata(
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as bool,
      sentRequest: null == sentRequest
          ? _value.sentRequest
          : sentRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedRequest: null == acceptedRequest
          ? _value.acceptedRequest
          : acceptedRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserToEventMetadata
    with DiagnosticableTreeMixin
    implements _UserToEventMetadata {
  const _$_UserToEventMetadata(
      {required this.bought,
      required this.sentRequest,
      required this.acceptedRequest});

  @override
  final bool bought;
  @override
  final bool sentRequest;
  @override
  final bool acceptedRequest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserToEventMetadata(bought: $bought, sentRequest: $sentRequest, acceptedRequest: $acceptedRequest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserToEventMetadata'))
      ..add(DiagnosticsProperty('bought', bought))
      ..add(DiagnosticsProperty('sentRequest', sentRequest))
      ..add(DiagnosticsProperty('acceptedRequest', acceptedRequest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserToEventMetadata &&
            (identical(other.bought, bought) || other.bought == bought) &&
            (identical(other.sentRequest, sentRequest) ||
                other.sentRequest == sentRequest) &&
            (identical(other.acceptedRequest, acceptedRequest) ||
                other.acceptedRequest == acceptedRequest));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bought, sentRequest, acceptedRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserToEventMetadataCopyWith<_$_UserToEventMetadata> get copyWith =>
      __$$_UserToEventMetadataCopyWithImpl<_$_UserToEventMetadata>(
          this, _$identity);
}

abstract class _UserToEventMetadata implements UserToEventMetadata {
  const factory _UserToEventMetadata(
      {required final bool bought,
      required final bool sentRequest,
      required final bool acceptedRequest}) = _$_UserToEventMetadata;

  @override
  bool get bought;
  @override
  bool get sentRequest;
  @override
  bool get acceptedRequest;
  @override
  @JsonKey(ignore: true)
  _$$_UserToEventMetadataCopyWith<_$_UserToEventMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
