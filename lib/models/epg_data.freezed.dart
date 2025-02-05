// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epg_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EPGData _$EPGDataFromJson(Map<String, dynamic> json) {
  return _EPGData.fromJson(json);
}

/// @nodoc
mixin _$EPGData {
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<Channel> get channels => throw _privateConstructorUsedError;
  List<Program> get programs => throw _privateConstructorUsedError;

  /// Serializes this EPGData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EPGData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EPGDataCopyWith<EPGData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EPGDataCopyWith<$Res> {
  factory $EPGDataCopyWith(EPGData value, $Res Function(EPGData) then) =
      _$EPGDataCopyWithImpl<$Res, EPGData>;
  @useResult
  $Res call(
      {DateTime lastUpdated, List<Channel> channels, List<Program> programs});
}

/// @nodoc
class _$EPGDataCopyWithImpl<$Res, $Val extends EPGData>
    implements $EPGDataCopyWith<$Res> {
  _$EPGDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EPGData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? channels = null,
    Object? programs = null,
  }) {
    return _then(_value.copyWith(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EPGDataImplCopyWith<$Res> implements $EPGDataCopyWith<$Res> {
  factory _$$EPGDataImplCopyWith(
          _$EPGDataImpl value, $Res Function(_$EPGDataImpl) then) =
      __$$EPGDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime lastUpdated, List<Channel> channels, List<Program> programs});
}

/// @nodoc
class __$$EPGDataImplCopyWithImpl<$Res>
    extends _$EPGDataCopyWithImpl<$Res, _$EPGDataImpl>
    implements _$$EPGDataImplCopyWith<$Res> {
  __$$EPGDataImplCopyWithImpl(
      _$EPGDataImpl _value, $Res Function(_$EPGDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EPGData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? channels = null,
    Object? programs = null,
  }) {
    return _then(_$EPGDataImpl(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EPGDataImpl implements _EPGData {
  const _$EPGDataImpl(
      {required this.lastUpdated,
      final List<Channel> channels = const [],
      final List<Program> programs = const []})
      : _channels = channels,
        _programs = programs;

  factory _$EPGDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EPGDataImplFromJson(json);

  @override
  final DateTime lastUpdated;
  final List<Channel> _channels;
  @override
  @JsonKey()
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<Program> _programs;
  @override
  @JsonKey()
  List<Program> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'EPGData(lastUpdated: $lastUpdated, channels: $channels, programs: $programs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EPGDataImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastUpdated,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_programs));

  /// Create a copy of EPGData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EPGDataImplCopyWith<_$EPGDataImpl> get copyWith =>
      __$$EPGDataImplCopyWithImpl<_$EPGDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EPGDataImplToJson(
      this,
    );
  }
}

abstract class _EPGData implements EPGData {
  const factory _EPGData(
      {required final DateTime lastUpdated,
      final List<Channel> channels,
      final List<Program> programs}) = _$EPGDataImpl;

  factory _EPGData.fromJson(Map<String, dynamic> json) = _$EPGDataImpl.fromJson;

  @override
  DateTime get lastUpdated;
  @override
  List<Channel> get channels;
  @override
  List<Program> get programs;

  /// Create a copy of EPGData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EPGDataImplCopyWith<_$EPGDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
