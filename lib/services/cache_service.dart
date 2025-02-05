import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/epg_data.dart';
import '../utils/error_handler.dart';

class CacheService {
  static const String _epgKey = 'epg_data';
  static const String _timestampKey = 'epg_timestamp';
  static const Duration _cacheValidity = Duration(hours: 12);

   Future<void> cacheEPGData(EPGData data) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(_epgKey, jsonEncode(data.toJson())),
        prefs.setInt(_timestampKey, DateTime.now().millisecondsSinceEpoch),
      ]);
    } catch (e) {
      throw EPGException('Failed to cache EPG data', originalError: e);
    }
  }

  Future<EPGData?> getCachedEPGData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final timestamp = prefs.getInt(_timestampKey);
      final jsonData = prefs.getString(_epgKey);

      if (timestamp == null || jsonData == null) return null;

      final cachedTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
      if (DateTime.now().difference(cachedTime) > _cacheValidity) return null;

      return EPGData.fromJson(jsonDecode(jsonData));
    } catch (e) {
      throw EPGException('Failed to read cached data', originalError: e);
    }
  }

  Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.remove(_epgKey),
      prefs.remove(_timestampKey),
    ]);
  }
}


