import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqcast_proj/constants/theme.dart';
import 'package:uniqcast_proj/main.dart';
import 'package:uniqcast_proj/ui/screens/home_screen.dart';

void main() {
  testWidgets('EPGApp has a title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: EPGApp(),
      ),
    );

    expect(find.text('EPG Guide'), findsOneWidget);
  });

  testWidgets('EPGApp uses EPGTheme', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: EPGApp(),
      ),
    );

    final MaterialApp app = tester.widget(find.byType(MaterialApp));
    expect(app.theme, EPGTheme.theme);
  });

  testWidgets('EPGApp home is HomeScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: EPGApp(),
      ),
    );

    expect(find.byType(HomeScreen), findsOneWidget);
  });
}