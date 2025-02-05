import 'package:flutter/material.dart';

class EPGTheme {
  static const backgroundColor = Color(0xFF1E1E1E);
  static const surfaceColor = Color(0xFF2D2D2D);
  static const borderColor = Color(0xFF404040);
  static const primaryColor = Color(0xFF2196F3);
  static const selectedBlue = Color(0xFF1E88E5);
  static const textPrimary = Colors.white;
  static const textSecondary = Color(0xFFB3B3B3);
  static const programTileColor = Color(0xFF333333);

  static ThemeData get theme => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      surface: surfaceColor,
      onSurface: textPrimary,
      secondary: selectedBlue,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
    ),
  );
}