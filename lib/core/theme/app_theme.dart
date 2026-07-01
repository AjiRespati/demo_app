import 'package:demo_app/core/theme/app_dark_theme.dart';
import 'package:demo_app/core/theme/app_light_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => AppLightTheme.theme;

  static ThemeData get dark => AppDarkTheme.theme;
}
