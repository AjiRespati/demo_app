import 'package:flutter/material.dart';
import '../constants/app_breakpoints.dart';

class ResponsiveInfo {
  final double width;

  const ResponsiveInfo(this.width);

  bool get isMobile => width < AppBreakpoints.mobile;

  bool get isTablet =>
      width >= AppBreakpoints.mobile && width < AppBreakpoints.tablet;

  bool get isDesktop => width >= AppBreakpoints.tablet;
}

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ResponsiveInfo info) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return builder(context, ResponsiveInfo(MediaQuery.sizeOf(context).width));
  }
}
