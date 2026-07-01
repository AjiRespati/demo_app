import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color glassBackground;
  final Color glassBorder;
  final double borderRadius;

  const AppThemeExtension({
    required this.glassBackground,
    required this.glassBorder,
    required this.borderRadius,
  });

  @override
  AppThemeExtension copyWith({
    Color? glassBackground,
    Color? glassBorder,
    double? borderRadius,
  }) {
    return AppThemeExtension(
      glassBackground: glassBackground ?? this.glassBackground,
      glassBorder: glassBorder ?? this.glassBorder,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  AppThemeExtension lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;

    return AppThemeExtension(
      glassBackground:
          Color.lerp(glassBackground, other.glassBackground, t)!,
      glassBorder:
          Color.lerp(glassBorder, other.glassBorder, t)!,
      borderRadius:
          borderRadius + (other.borderRadius - borderRadius) * t,
    );
  }
}