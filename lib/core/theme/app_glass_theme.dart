import 'package:flutter/material.dart';

import '../tokens/tokens.dart';

/// Theme extension for Glass Admin Kit surface values.
@immutable
class AppGlassTheme extends ThemeExtension<AppGlassTheme> {
  const AppGlassTheme({
    required this.blur,
    required this.thickness,
    required this.surfaceOpacity,
    required this.borderOpacity,
    required this.radius,
  });

  factory AppGlassTheme.light() {
    return const AppGlassTheme(
      blur: AppBlur.md,
      thickness: AppGlass.lightThickness,
      surfaceOpacity: GlassOpacity.medium,
      borderOpacity: GlassOpacity.high,
      radius: AppRadius.lg,
    );
  }

  factory AppGlassTheme.dark() {
    return const AppGlassTheme(
      blur: AppBlur.lg,
      thickness: AppGlass.darkThickness,
      surfaceOpacity: GlassOpacity.high,
      borderOpacity: GlassOpacity.medium,
      radius: AppRadius.lg,
    );
  }

  /// Default blur amount for glass surfaces.
  final double blur;

  /// Refraction thickness used by package-backed glass surfaces.
  final double thickness;

  /// Base opacity for glass surface fills.
  final double surfaceOpacity;

  /// Base opacity for glass borders.
  final double borderOpacity;

  /// Default radius for glass surfaces.
  final double radius;

  @override
  AppGlassTheme copyWith({
    double? blur,
    double? thickness,
    double? surfaceOpacity,
    double? borderOpacity,
    double? radius,
  }) {
    return AppGlassTheme(
      blur: blur ?? this.blur,
      thickness: thickness ?? this.thickness,
      surfaceOpacity: surfaceOpacity ?? this.surfaceOpacity,
      borderOpacity: borderOpacity ?? this.borderOpacity,
      radius: radius ?? this.radius,
    );
  }

  @override
  AppGlassTheme lerp(ThemeExtension<AppGlassTheme>? other, double t) {
    if (other is! AppGlassTheme) {
      return this;
    }

    return AppGlassTheme(
      blur: lerpDouble(blur, other.blur, t),
      thickness: lerpDouble(thickness, other.thickness, t),
      surfaceOpacity: lerpDouble(surfaceOpacity, other.surfaceOpacity, t),
      borderOpacity: lerpDouble(borderOpacity, other.borderOpacity, t),
      radius: lerpDouble(radius, other.radius, t),
    );
  }

  static double lerpDouble(double a, double b, double t) {
    return a + (b - a) * t;
  }
}
