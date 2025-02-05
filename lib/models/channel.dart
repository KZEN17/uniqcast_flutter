import 'package:freezed_annotation/freezed_annotation.dart';
import 'base_models.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String id,
    @JsonKey(name: 'display-name') required String displayName,
    String? url,
    @JsonKey(name: 'icon') ChannelIcon? icon,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}