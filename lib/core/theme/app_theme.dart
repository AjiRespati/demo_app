import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tokens/tokens.dart';
import 'app_glass_theme.dart';

/// Material theme entry point for Glass Admin Kit.
abstract final class AppTheme {
  /// Creates the light application theme.
  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.lightSeed,
      brightness: Brightness.light,
    );

    return _themeData(
      colorScheme: colorScheme,
      glassTheme: AppGlassTheme.light(),
    );
  }

  /// Creates the dark application theme.
  static ThemeData dark() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.darkSeed,
      brightness: Brightness.dark,
    );

    return _themeData(
      colorScheme: colorScheme,
      glassTheme: AppGlassTheme.dark(),
    );
  }

  static ThemeData _themeData({
    required ColorScheme colorScheme,
    required AppGlassTheme glassTheme,
  }) {
    final textTheme = GoogleFonts.interTextTheme().apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );

    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[glassTheme],
    );
  }
}
