import 'package:freezed_annotation/freezed_annotation.dart';
import 'base_models.dart';

part 'program.freezed.dart';
part 'program.g.dart';

@freezed
class Program with _$Program {
  const factory Program({
    @JsonKey(name: 'channel') required String channelId,
    required DateTime start,
    required DateTime stop,
    required List<TitleData> title,
    List<DescriptionData>? desc,
    @JsonKey(name: 'previously-shown') bool? previouslyShown,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) => _$ProgramFromJson(json);
}