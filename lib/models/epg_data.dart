import 'package:freezed_annotation/freezed_annotation.dart';
import 'channel.dart';
import 'program.dart';

part 'epg_data.freezed.dart';
part 'epg_data.g.dart';

@freezed
class EPGData with _$EPGData {
  const factory EPGData({
    required DateTime lastUpdated,
    @Default([]) List<Channel> channels,
    @Default([]) List<Program> programs,
  }) = _EPGData;

  factory EPGData.fromJson(Map<String, dynamic> json) => _$EPGDataFromJson(json);
}