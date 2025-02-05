import 'dart:io';

import 'package:http/http.dart' as http;
import '../models/epg_data.dart';
import '../utils/error_handler.dart';
import 'xml_parser_service.dart';

class APIService {
  final String baseUrl;
  final XMLParserService _xmlParser;
  
  APIService({required this.baseUrl, XMLParserService? xmlParser})
      : _xmlParser = xmlParser ?? XMLParserService();

  Future<EPGData> fetchEPGData() async {
    try {
      final response = await http.get(Uri.parse(baseUrl)).timeout(
        const Duration(seconds: 10),
        onTimeout: () => throw EPGException('Connection timeout'),
      );
      
      if (response.statusCode == 200) {
        try {
          return _xmlParser.parseEPGData(response.body);
        } catch (e) {
          throw EPGException('Failed to parse EPG data', 
            code: 'PARSE_ERROR', 
            originalError: e);
        }
      } else if (response.statusCode == 404) {
        throw EPGException('EPG data not found', code: 'NOT_FOUND');
      } else {
        throw EPGException(
          'Server error ${response.statusCode}', 
          code: 'SERVER_ERROR'
        );
      }
    } on SocketException {
      throw EPGException('No internet connection', code: 'NO_CONNECTION');
    } catch (e) {
      if (e is EPGException) rethrow;
      throw EPGException('Failed to load EPG data', originalError: e);
    }
  }
}