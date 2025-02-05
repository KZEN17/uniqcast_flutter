// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelIcon _$ChannelIconFromJson(Map<String, dynamic> json) {
  return _ChannelIcon.fromJson(json);
}

/// @nodoc
mixin _$ChannelIcon {
  @JsonKey(name: 'src')
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ChannelIcon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelIconCopyWith<ChannelIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelIconCopyWith<$Res> {
  factory $ChannelIconCopyWith(
          ChannelIcon value, $Res Function(ChannelIcon) then) =
      _$ChannelIconCopyWithImpl<$Res, ChannelIcon>;
  @useResult
  $Res call({@JsonKey(name: 'src') String url});
}

/// @nodoc
class _$ChannelIconCopyWithImpl<$Res, $Val extends ChannelIcon>
    implements $ChannelIconCopyWith<$Res> {
  _$ChannelIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelIconImplCopyWith<$Res>
    implements $ChannelIconCopyWith<$Res> {
  factory _$$ChannelIconImplCopyWith(
          _$ChannelIconImpl value, $Res Function(_$ChannelIconImpl) then) =
      __$$ChannelIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'src') String url});
}

/// @nodoc
class __$$ChannelIconImplCopyWithImpl<$Res>
    extends _$ChannelIconCopyWithImpl<$Res, _$ChannelIconImpl>
    implements _$$ChannelIconImplCopyWith<$Res> {
  __$$ChannelIconImplCopyWithImpl(
      _$ChannelIconImpl _value, $Res Function(_$ChannelIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ChannelIconImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelIconImpl implements _ChannelIcon {
  const _$ChannelIconImpl({@JsonKey(name: 'src') required this.url});

  factory _$ChannelIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelIconImplFromJson(json);

  @override
  @JsonKey(name: 'src')
  final String url;

  @override
  String toString() {
    return 'ChannelIcon(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelIconImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of ChannelIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelIconImplCopyWith<_$ChannelIconImpl> get copyWith =>
      __$$ChannelIconImplCopyWithImpl<_$ChannelIconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelIconImplToJson(
      this,
    );
  }
}

abstract class _ChannelIcon implements ChannelIcon {
  const factory _ChannelIcon(
      {@JsonKey(name: 'src') required final String url}) = _$ChannelIconImpl;

  factory _ChannelIcon.fromJson(Map<String, dynamic> json) =
      _$ChannelIconImpl.fromJson;

  @override
  @JsonKey(name: 'src')
  String get url;

  /// Create a copy of ChannelIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelIconImplCopyWith<_$ChannelIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TitleData _$TitleDataFromJson(Map<String, dynamic> json) {
  return _TitleData.fromJson(json);
}

/// @nodoc
mixin _$TitleData {
  String get lang => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this TitleData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TitleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TitleDataCopyWith<TitleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleDataCopyWith<$Res> {
  factory $TitleDataCopyWith(TitleData value, $Res Function(TitleData) then) =
      _$TitleDataCopyWithImpl<$Res, TitleData>;
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class _$TitleDataCopyWithImpl<$Res, $Val extends TitleData>
    implements $TitleDataCopyWith<$Res> {
  _$TitleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TitleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleDataImplCopyWith<$Res>
    implements $TitleDataCopyWith<$Res> {
  factory _$$TitleDataImplCopyWith(
          _$TitleDataImpl value, $Res Function(_$TitleDataImpl) then) =
      __$$TitleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class __$$TitleDataImplCopyWithImpl<$Res>
    extends _$TitleDataCopyWithImpl<$Res, _$TitleDataImpl>
    implements _$$TitleDataImplCopyWith<$Res> {
  __$$TitleDataImplCopyWithImpl(
      _$TitleDataImpl _value, $Res Function(_$TitleDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TitleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_$TitleDataImpl(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleDataImpl implements _TitleData {
  const _$TitleDataImpl({required this.lang, required this.value});

  factory _$TitleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleDataImplFromJson(json);

  @override
  final String lang;
  @override
  final String value;

  @override
  String toString() {
    return 'TitleData(lang: $lang, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleDataImpl &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lang, value);

  /// Create a copy of TitleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleDataImplCopyWith<_$TitleDataImpl> get copyWith =>
      __$$TitleDataImplCopyWithImpl<_$TitleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleDataImplToJson(
      this,
    );
  }
}

abstract class _TitleData implements TitleData {
  const factory _TitleData(
      {required final String lang,
      required final String value}) = _$TitleDataImpl;

  factory _TitleData.fromJson(Map<String, dynamic> json) =
      _$TitleDataImpl.fromJson;

  @override
  String get lang;
  @override
  String get value;

  /// Create a copy of TitleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleDataImplCopyWith<_$TitleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DescriptionData _$DescriptionDataFromJson(Map<String, dynamic> json) {
  return _DescriptionData.fromJson(json);
}

/// @nodoc
mixin _$DescriptionData {
  String get lang => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this DescriptionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DescriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescriptionDataCopyWith<DescriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionDataCopyWith<$Res> {
  factory $DescriptionDataCopyWith(
          DescriptionData value, $Res Function(DescriptionData) then) =
      _$DescriptionDataCopyWithImpl<$Res, DescriptionData>;
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class _$DescriptionDataCopyWithImpl<$Res, $Val extends DescriptionData>
    implements $DescriptionDataCopyWith<$Res> {
  _$DescriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DescriptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescriptionDataImplCopyWith<$Res>
    implements $DescriptionDataCopyWith<$Res> {
  factory _$$DescriptionDataImplCopyWith(_$DescriptionDataImpl value,
          $Res Function(_$DescriptionDataImpl) then) =
      __$$DescriptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class __$$DescriptionDataImplCopyWithImpl<$Res>
    extends _$DescriptionDataCopyWithImpl<$Res, _$DescriptionDataImpl>
    implements _$$DescriptionDataImplCopyWith<$Res> {
  __$$DescriptionDataImplCopyWithImpl(
      _$DescriptionDataImpl _value, $Res Function(_$DescriptionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DescriptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_$DescriptionDataImpl(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescriptionDataImpl implements _DescriptionData {
  const _$DescriptionDataImpl({required this.lang, required this.value});

  factory _$DescriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescriptionDataImplFromJson(json);

  @override
  final String lang;
  @override
  final String value;

  @override
  String toString() {
    return 'DescriptionData(lang: $lang, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionDataImpl &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lang, value);

  /// Create a copy of DescriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionDataImplCopyWith<_$DescriptionDataImpl> get copyWith =>
      __$$DescriptionDataImplCopyWithImpl<_$DescriptionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescriptionDataImplToJson(
      this,
    );
  }
}

abstract class _DescriptionData implements DescriptionData {
  const factory _DescriptionData(
      {required final String lang,
      required final String value}) = _$DescriptionDataImpl;

  factory _DescriptionData.fromJson(Map<String, dynamic> json) =
      _$DescriptionDataImpl.fromJson;

  @override
  String get lang;
  @override
  String get value;

  /// Create a copy of DescriptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescriptionDataImplCopyWith<_$DescriptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
