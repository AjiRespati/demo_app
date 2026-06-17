import 'package:demo_app/demo_app.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_setup.dart';
import 'package:liquid_glass_widgets/theme/glass_theme_data.dart';
import 'package:liquid_glass_widgets/types/glass_quality.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();

  runApp(
    LiquidGlassWidgets.wrap(
      child: DemoApp(),
      theme: GlassThemeData.simple(
        blur: 10,
        thickness: 30,
        quality: GlassQuality.standard,
      ),
    ),
  );
}
