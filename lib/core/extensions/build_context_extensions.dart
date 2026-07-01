import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../theme/theme.dart';

/// Common theme accessors for widget code.
extension BuildContextThemeExtensions on BuildContext {
  /// Current Material color scheme.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Current Material text theme.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Current Glass Admin Kit glass theme extension.
  AppGlassTheme get glassTheme {
    final extension = Theme.of(this).extension<AppGlassTheme>();
    return extension ?? AppGlassTheme.light();
  }

  /// Current responsive viewport information.
  ResponsiveInfo get responsive => ResponsiveInfo.fromContext(this);
}
