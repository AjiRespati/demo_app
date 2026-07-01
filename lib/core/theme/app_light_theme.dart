import 'package:demo_app/core/theme/app_theme_extention.dart';
import 'package:flutter/material.dart';

class AppLightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Colors.blue,
      scaffoldBackgroundColor: const Color(0xfff6f7fb),

      extensions: const [
        AppThemeExtension(
          glassBackground: Color(0x99FFFFFF),
          glassBorder: Color(0x33FFFFFF),
          borderRadius: 20,
        ),
      ],
    );
  }
}
