import 'package:demo_app/core/theme/app_theme_extention.dart';
import 'package:flutter/material.dart';

class AppDarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.blue,
      scaffoldBackgroundColor: const Color(0xff111318),

      extensions: const [
        AppThemeExtension(
          glassBackground: Color(0x22FFFFFF),
          glassBorder: Color(0x44FFFFFF),
          borderRadius: 20,
        ),
      ],
    );
  }
}