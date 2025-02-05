import 'package:riverpod/riverpod.dart';

import '../models/epg_data.dart';
import '../services/cache_service.dart';


final cacheServiceProvider = Provider((ref) => CacheService());

final epgCacheProvider = FutureProvider<EPGData?>((ref) async {
  final cacheService = ref.read(cacheServiceProvider);
  return cacheService.getCachedEPGData();
});