import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqcast_proj/models/base_models.dart';
import 'package:uniqcast_proj/models/channel.dart';
import 'package:uniqcast_proj/ui/widgets/channel_carousel.dart';

void main() {
  final testChannels = [
    Channel(id: '1', displayName: 'Channel 1', icon: ChannelIcon(url: 'icon1.png')),
    Channel(id: '2', displayName: 'Channel 2', icon:ChannelIcon(url: 'icon1.png')),
    Channel(id: '3', displayName: 'Channel 3', icon: ChannelIcon(url: 'icon1.png')),
  ];

  testWidgets('ChannelCarousel displays the correct number of channels', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: ChannelCarousel(channels: testChannels),
        ),
      ),
    );

    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(AnimatedOpacity), findsNWidgets(testChannels.length));
  });

  testWidgets('ChannelCarousel updates selected channel on page change', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: ChannelCarousel(channels: testChannels),
        ),
      ),
    );

    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();


  });

  testWidgets('ChannelCarousel displays channel icon or name correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: ChannelCarousel(channels: testChannels),
        ),
      ),
    );

    expect(find.byType(Image), findsNWidgets(2));
    expect(find.text('Channel 3'), findsOneWidget);
  });
}