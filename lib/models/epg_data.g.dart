// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epg_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EPGDataImpl _$$EPGDataImplFromJson(Map<String, dynamic> json) =>
    _$EPGDataImpl(
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      channels: (json['channels'] as List<dynamic>?)
              ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      programs: (json['programs'] as List<dynamic>?)
              ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EPGDataImplToJson(_$EPGDataImpl instance) =>
    <String, dynamic>{
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'channels': instance.channels,
      'programs': instance.programs,
    };
