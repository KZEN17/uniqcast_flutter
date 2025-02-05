import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/theme.dart';
import 'ui/screens/home_screen.dart';


void main() {
  runApp(
    const ProviderScope(
      child: EPGApp(),
    ),
  );
}

class EPGApp extends StatelessWidget {
  const EPGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EPG Guide',
      theme: EPGTheme.theme,
      home: const HomeScreen(),
    );
  }
}