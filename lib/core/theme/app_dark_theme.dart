import 'package:flutter/material.dart';

import 'package:demo_app/core/theme/app_theme_extention.dart';
import 'package:demo_app/core/tokens/app_radius.dart';

class AppDarkTheme {
  static ThemeData get theme {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffadc6ff),
      onPrimary: Color(0xff002f65),
      secondary: Color(0xff5eead4),
      onSecondary: Color(0xff003735),
      tertiary: Color(0xffffb86b),
      onTertiary: Color(0xff472100),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      surface: Color(0xff10141d),
      onSurface: Color(0xffeef2f8),
      surfaceContainerHighest: Color(0xff242b38),
      onSurfaceVariant: Color(0xffc1c8d6),
      outline: Color(0xff8b95a8),
      outlineVariant: Color(0xff404858),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e8ef),
      onInverseSurface: Color(0xff1d2028),
      inversePrimary: Color(0xff2563eb),
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
          glassBackground: Color(0x2EFFFFFF),
          glassBorder: Color(0x3DFFFFFF),
          borderRadius: AppRadius.lg,
          backgroundStart: Color(0xff10141d),
          backgroundMid: Color(0xff12323f),
          backgroundEnd: Color(0xff321f17),
        ),
      ],
    );
  }
}
