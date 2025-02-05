// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
mixin _$Program {
  @JsonKey(name: 'channel')
  String get channelId => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get stop => throw _privateConstructorUsedError;
  List<TitleData> get title => throw _privateConstructorUsedError;
  List<DescriptionData>? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'previously-shown')
  bool? get previouslyShown => throw _privateConstructorUsedError;

  /// Serializes this Program to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramCopyWith<Program> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res, Program>;
  @useResult
  $Res call(
      {@JsonKey(name: 'channel') String channelId,
      DateTime start,
      DateTime stop,
      List<TitleData> title,
      List<DescriptionData>? desc,
      @JsonKey(name: 'previously-shown') bool? previouslyShown});
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res, $Val extends Program>
    implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? start = null,
    Object? stop = null,
    Object? title = null,
    Object? desc = freezed,
    Object? previouslyShown = freezed,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: null == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<TitleData>,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<DescriptionData>?,
      previouslyShown: freezed == previouslyShown
          ? _value.previouslyShown
          : previouslyShown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
          _$ProgramImpl value, $Res Function(_$ProgramImpl) then) =
      __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'channel') String channelId,
      DateTime start,
      DateTime stop,
      List<TitleData> title,
      List<DescriptionData>? desc,
      @JsonKey(name: 'previously-shown') bool? previouslyShown});
}

/// @nodoc
class __$$ProgramImplCopyWithImpl<$Res>
    extends _$ProgramCopyWithImpl<$Res, _$ProgramImpl>
    implements _$$ProgramImplCopyWith<$Res> {
  __$$ProgramImplCopyWithImpl(
      _$ProgramImpl _value, $Res Function(_$ProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? start = null,
    Object? stop = null,
    Object? title = null,
    Object? desc = freezed,
    Object? previouslyShown = freezed,
  }) {
    return _then(_$ProgramImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: null == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<TitleData>,
      desc: freezed == desc
          ? _value._desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<DescriptionData>?,
      previouslyShown: freezed == previouslyShown
          ? _value.previouslyShown
          : previouslyShown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramImpl implements _Program {
  const _$ProgramImpl(
      {@JsonKey(name: 'channel') required this.channelId,
      required this.start,
      required this.stop,
      required final List<TitleData> title,
      final List<DescriptionData>? desc,
      @JsonKey(name: 'previously-shown') this.previouslyShown})
      : _title = title,
        _desc = desc;

  factory _$ProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramImplFromJson(json);

  @override
  @JsonKey(name: 'channel')
  final String channelId;
  @override
  final DateTime start;
  @override
  final DateTime stop;
  final List<TitleData> _title;
  @override
  List<TitleData> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  final List<DescriptionData>? _desc;
  @override
  List<DescriptionData>? get desc {
    final value = _desc;
    if (value == null) return null;
    if (_desc is EqualUnmodifiableListView) return _desc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'previously-shown')
  final bool? previouslyShown;

  @override
  String toString() {
    return 'Program(channelId: $channelId, start: $start, stop: $stop, title: $title, desc: $desc, previouslyShown: $previouslyShown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality().equals(other._desc, _desc) &&
            (identical(other.previouslyShown, previouslyShown) ||
                other.previouslyShown == previouslyShown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelId,
      start,
      stop,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_desc),
      previouslyShown);

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      __$$ProgramImplCopyWithImpl<_$ProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramImplToJson(
      this,
    );
  }
}

abstract class _Program implements Program {
  const factory _Program(
          {@JsonKey(name: 'channel') required final String channelId,
          required final DateTime start,
          required final DateTime stop,
          required final List<TitleData> title,
          final List<DescriptionData>? desc,
          @JsonKey(name: 'previously-shown') final bool? previouslyShown}) =
      _$ProgramImpl;

  factory _Program.fromJson(Map<String, dynamic> json) = _$ProgramImpl.fromJson;

  @override
  @JsonKey(name: 'channel')
  String get channelId;
  @override
  DateTime get start;
  @override
  DateTime get stop;
  @override
  List<TitleData> get title;
  @override
  List<DescriptionData>? get desc;
  @override
  @JsonKey(name: 'previously-shown')
  bool? get previouslyShown;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
