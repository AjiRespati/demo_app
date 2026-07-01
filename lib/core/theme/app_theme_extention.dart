import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color glassBackground;
  final Color glassBorder;
  final double borderRadius;
  final Color backgroundStart;
  final Color backgroundMid;
  final Color backgroundEnd;

  const AppThemeExtension({
    required this.glassBackground,
    required this.glassBorder,
    required this.borderRadius,
    required this.backgroundStart,
    required this.backgroundMid,
    required this.backgroundEnd,
  });

  @override
  AppThemeExtension copyWith({
    Color? glassBackground,
    Color? glassBorder,
    double? borderRadius,
    Color? backgroundStart,
    Color? backgroundMid,
    Color? backgroundEnd,
  }) {
    return AppThemeExtension(
      glassBackground: glassBackground ?? this.glassBackground,
      glassBorder: glassBorder ?? this.glassBorder,
      borderRadius: borderRadius ?? this.borderRadius,
      backgroundStart: backgroundStart ?? this.backgroundStart,
      backgroundMid: backgroundMid ?? this.backgroundMid,
      backgroundEnd: backgroundEnd ?? this.backgroundEnd,
    );
  }

  @override
  AppThemeExtension lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;

    return AppThemeExtension(
      glassBackground: Color.lerp(glassBackground, other.glassBackground, t)!,
      glassBorder: Color.lerp(glassBorder, other.glassBorder, t)!,
      borderRadius: borderRadius + (other.borderRadius - borderRadius) * t,
      backgroundStart: Color.lerp(backgroundStart, other.backgroundStart, t)!,
      backgroundMid: Color.lerp(backgroundMid, other.backgroundMid, t)!,
      backgroundEnd: Color.lerp(backgroundEnd, other.backgroundEnd, t)!,
    );
  }
}
