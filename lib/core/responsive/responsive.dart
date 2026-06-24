import 'package:demo_app/core/constants/app_breakpoints.dart';
import 'package:flutter/material.dart';

class Responsive {
  const Responsive._();

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < AppBreakpoints.mobile;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return width >= AppBreakpoints.mobile && width < AppBreakpoints.tablet;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= AppBreakpoints.tablet;
  }
}
