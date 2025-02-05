// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramImpl _$$ProgramImplFromJson(Map<String, dynamic> json) =>
    _$ProgramImpl(
      channelId: json['channel'] as String,
      start: DateTime.parse(json['start'] as String),
      stop: DateTime.parse(json['stop'] as String),
      title: (json['title'] as List<dynamic>)
          .map((e) => TitleData.fromJson(e as Map<String, dynamic>))
          .toList(),
      desc: (json['desc'] as List<dynamic>?)
          ?.map((e) => DescriptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      previouslyShown: json['previously-shown'] as bool?,
    );

Map<String, dynamic> _$$ProgramImplToJson(_$ProgramImpl instance) =>
    <String, dynamic>{
      'channel': instance.channelId,
      'start': instance.start.toIso8601String(),
      'stop': instance.stop.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
      'previously-shown': instance.previouslyShown,
    };
