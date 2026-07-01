import 'package:flutter/animation.dart';

/// Motion duration tokens used across the app.
abstract final class AppDurations {
  static const Duration fast = Duration(milliseconds: 160);
  static const Duration medium = Duration(milliseconds: 240);
  static const Duration slow = Duration(milliseconds: 360);

  static const Curve defaultCurve = Curves.easeOutCubic;
}
