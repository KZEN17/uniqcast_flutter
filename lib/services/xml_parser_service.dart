import 'package:xml/xml.dart';
import '../models/base_models.dart';
import '../models/channel.dart';
import '../models/program.dart';
import '../models/epg_data.dart';

class XMLParserService {
  EPGData parseEPGData(String xmlString) {
    final document = XmlDocument.parse(xmlString);
    final channels = _parseChannels(document);
    final programs = _parsePrograms(document);

    return EPGData(
      lastUpdated: DateTime.now(),
      channels: channels,
      programs: programs,
    );
  }

  List<Channel> _parseChannels(XmlDocument document) {
    return document.findAllElements('channel').map((node) {
      return Channel(
        id: node.getAttribute('id') ?? '',
        displayName: node.findElements('display-name').first.text,
        url: node.findElements('url').firstOrNull?.text,
        icon: node.findElements('icon').firstOrNull?.let((iconNode) => 
          ChannelIcon(url: iconNode.getAttribute('src') ?? '')),
      );
    }).toList();
  }

  List<Program> _parsePrograms(XmlDocument document) {
    return document.findAllElements('programme').map((node) {
      return Program(
        channelId: node.getAttribute('channel') ?? '',
        start: _parseDateTime(node.getAttribute('start') ?? ''),
        stop: _parseDateTime(node.getAttribute('stop') ?? ''),
        title: node.findElements('title').map((titleNode) => 
          TitleData(
            lang: titleNode.getAttribute('lang') ?? '',
            value: titleNode.text,
          )).toList(),
        desc: node.findElements('desc').map((descNode) => 
          DescriptionData(
            lang: descNode.getAttribute('lang') ?? '',
            value: descNode.text,
          )).toList(),
        previouslyShown: node.findElements('previously-shown').isNotEmpty,
      );
    }).toList();
  }

  DateTime _parseDateTime(String dateString) {
    // Format: YYYYMMDDHHMMSS +HHMM
    final date = dateString.substring(0, 14);
    final offset = dateString.substring(15);
    
    final year = int.parse(date.substring(0, 4));
    final month = int.parse(date.substring(4, 6));
    final day = int.parse(date.substring(6, 8));
    final hour = int.parse(date.substring(8, 10));
    final minute = int.parse(date.substring(10, 12));
    final second = int.parse(date.substring(12, 14));

    final offsetHours = int.parse(offset.substring(0, 3));
    final offsetMinutes = int.parse(offset.substring(3));

    return DateTime.utc(year, month, day, hour, minute, second)
        .add(Duration(hours: offsetHours, minutes: offsetMinutes));
  }
}

extension ObjectExtension<T> on T {
  R let<R>(R Function(T) operation) => operation(this);
}