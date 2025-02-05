import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../constants/theme.dart';
import '../../providers/epg_provider.dart';
import '../../utils/error_handler.dart';
import '../widgets/channel_carousel.dart';
import '../widgets/error_view.dart';
import '../widgets/program_grid.dart';
import '../widgets/time_header.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final epgData = ref.watch(epgDataProvider);
    final channelPrograms = ref.watch(channelProgramsProvider);

    return SafeArea(
      child: Scaffold(
        body: epgData.when(
          data: (data) => Column(
            children: [
              Container(
                color: EPGTheme.surfaceColor,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ChannelCarousel(channels: data.channels),
              ),
              TimeHeader(selectedDate: selectedDate),
              if (data.channels.isEmpty)
                const Expanded(
                  child: Center(
                    child: Text('No programming data available'),
                  ),
                )
              else
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: channelPrograms.isEmpty
                            ? const Center(
                                child: Text('No programs for selected date'),
                              )
                            : Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ProgramGrid(
                                  programs: channelPrograms,
                                  selectedDate: selectedDate,
                                ),
                            ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => ErrorView(
            message: error is EPGException
                ? error.message
                : 'An unexpected error occurred',
            onRetry: () => ref.read(epgDataProvider.notifier).loadEPGData(),
          ),
        ),
      ),
    );
  }
}
