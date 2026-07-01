import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

import 'package:demo_app/app/app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();

  runApp(
    LiquidGlassWidgets.wrap(
      adaptiveQuality: true,
      theme: GlassThemeData.simple(
        blur: 10,
        thickness: 28,
        quality: GlassQuality.standard,
      ),
      child: const ProviderScope(child: App()),
    ),
  );
}
