// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_models.freezed.dart';
part 'base_models.g.dart';

@freezed
class ChannelIcon with _$ChannelIcon {
  const factory ChannelIcon({
    @JsonKey(name: 'src') required String url,
  }) = _ChannelIcon;

  factory ChannelIcon.fromJson(Map<String, dynamic> json) => _$ChannelIconFromJson(json);
}

@freezed
class TitleData with _$TitleData {
  const factory TitleData({
    required String lang,
    required String value,
  }) = _TitleData;

  factory TitleData.fromJson(Map<String, dynamic> json) => _$TitleDataFromJson(json);
}

@freezed
class DescriptionData with _$DescriptionData {
  const factory DescriptionData({
    required String lang,
    required String value,
  }) = _DescriptionData;

  factory DescriptionData.fromJson(Map<String, dynamic> json) => _$DescriptionDataFromJson(json);
}