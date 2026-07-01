import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart' as liquid;

import '../core/tokens/tokens.dart';
import 'app.dart';

/// Initializes framework services before the app starts.
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await liquid.LiquidGlassWidgets.initialize();

  runApp(
    liquid.LiquidGlassWidgets.wrap(
      adaptiveQuality: true,
      theme: liquid.GlassThemeData.simple(
        blur: AppBlur.md,
        thickness: AppGlass.globalThickness,
        quality: liquid.GlassQuality.standard,
      ),
      child: const ProviderScope(child: GlassAdminKitApp()),
    ),
  );
}
