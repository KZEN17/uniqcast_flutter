
import 'package:riverpod/riverpod.dart';
import 'package:uniqcast_proj/providers/api_provider.dart';
import '../models/epg_data.dart';
import '../models/program.dart';
import '../services/cache_service.dart';

final cacheServiceProvider = Provider((ref) => CacheService());

final epgDataProvider = StateNotifierProvider<EPGDataNotifier, AsyncValue<EPGData>>((ref) {
  return EPGDataNotifier(ref);
});

final selectedDateProvider = StateProvider<DateTime>((ref) => DateTime.now());
final selectedChannelIdProvider = StateProvider<String?>((ref) => null);

// New provider to initialize default channel
final initializeDefaultChannelProvider = Provider((ref) {
  ref.watch(epgDataProvider).whenData((data) {
    if (data.channels.isNotEmpty && ref.read(selectedChannelIdProvider) == null) {
      Future.microtask(() {
        ref.read(selectedChannelIdProvider.notifier).state = data.channels[0].id;
      });
    }
  });
  return null;
});

final channelProgramsProvider = Provider<List<Program>>((ref) {
  final epgData = ref.watch(epgDataProvider);
  final selectedDate = ref.watch(selectedDateProvider);
  final selectedChannelId = ref.watch(selectedChannelIdProvider);
  
  ref.watch(initializeDefaultChannelProvider);

  return epgData.whenData((data) {
    final channelId = selectedChannelId ?? data.channels.firstOrNull?.id;
    if (channelId == null) return <Program>[];
    
    return data.programs.where((program) =>
      program.channelId == channelId &&
      _isSameDay(program.start, selectedDate)
    ).toList().cast<Program>();
  }).value ?? [];
});

bool _isSameDay(DateTime date1, DateTime date2) {
  return date1.year == date2.year && 
         date1.month == date2.month && 
         date1.day == date2.day;
}

class EPGDataNotifier extends StateNotifier<AsyncValue<EPGData>> {
  final Ref ref;

  EPGDataNotifier(this.ref) : super(const AsyncValue.loading()) {
    loadEPGData();
  }

  Future<void> loadEPGData() async {
    try {
      state = const AsyncValue.loading();
      
      final cachedData = await ref.read(cacheServiceProvider).getCachedEPGData();
      if (cachedData != null) {
        state = AsyncValue.data(cachedData);
        return;
      }

      final apiService = ref.read(apiServiceProvider);
      final freshData = await apiService.fetchEPGData();
      await ref.read(cacheServiceProvider).cacheEPGData(freshData);
      state = AsyncValue.data(freshData);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}