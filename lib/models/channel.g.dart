// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: json['id'] as String,
      displayName: json['display-name'] as String,
      url: json['url'] as String?,
      icon: json['icon'] == null
          ? null
          : ChannelIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display-name': instance.displayName,
      'url': instance.url,
      'icon': instance.icon,
    };
