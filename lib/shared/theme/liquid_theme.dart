import 'package:flutter/material.dart';

ThemeData liquidTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: Colors.black,

    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.white70,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,

    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
