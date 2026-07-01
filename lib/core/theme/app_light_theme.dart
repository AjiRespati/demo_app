import 'package:flutter/material.dart';

import 'package:demo_app/core/theme/app_theme_extention.dart';
import 'package:demo_app/core/tokens/app_radius.dart';

class AppLightTheme {
  static ThemeData get theme {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2563eb),
      onPrimary: Color(0xffffffff),
      secondary: Color(0xff14b8a6),
      onSecondary: Color(0xff052f2f),
      tertiary: Color(0xfff97316),
      onTertiary: Color(0xff2b1300),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      surface: Color(0xfff7f8fb),
      onSurface: Color(0xff18202f),
      surfaceContainerHighest: Color(0xffe7ebf3),
      onSurfaceVariant: Color(0xff566174),
      outline: Color(0xff778197),
      outlineVariant: Color(0xffc7cedd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d313a),
      onInverseSurface: Color(0xffeff1f7),
      inversePrimary: Color(0xffadc6ff),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: const AppBarTheme(centerTitle: false),
      cardTheme: const CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.sm)),
        ),
      ),
      extensions: const [
        AppThemeExtension(
          glassBackground: Color(0x99FFFFFF),
          glassBorder: Color(0x66FFFFFF),
          borderRadius: AppRadius.lg,
          backgroundStart: Color(0xfff7f8fb),
          backgroundMid: Color(0xffdbeafe),
          backgroundEnd: Color(0xfffff7ed),
        ),
      ],
    );
  }
}
