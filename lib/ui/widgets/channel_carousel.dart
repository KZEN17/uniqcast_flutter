import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../constants/theme.dart';
import '../../models/channel.dart';
import '../../providers/epg_provider.dart';

class ChannelCarousel extends HookConsumerWidget {
  final List<Channel> channels;
  final PageController controller = PageController(viewportFraction: 0.3);

  ChannelCarousel({super.key, required this.channels});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChannelId = ref.watch(selectedChannelIdProvider);

    return SizedBox(
      height: 70,
      child: PageView.builder(
        controller: controller,
        onPageChanged: (index) {
          ref.read(selectedChannelIdProvider.notifier).state = channels[index].id;
        },
        itemCount: channels.length,
        itemBuilder: (context, index) {
          final channel = channels[index];
          final isSelected = channel.id == selectedChannelId;
          
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isSelected ? 1.0 : 0.5,
            child: Center(
              child: SizedBox(
                width: 70,
                height: 35,
                child: channel.icon?.url != null
                    ? Image.network(
                        channel.icon!.url,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => 
                          Text(
                            channel.displayName,
                            style: TextStyle(
                              color: EPGTheme.textPrimary,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                      )
                    : Text(
                        channel.displayName,
                        style: TextStyle(
                          color: EPGTheme.textPrimary,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}