import 'package:demo_app/core/constants/app_breakpoints.dart';
import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceType deviceType) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width < AppBreakpoints.mobile) {
      return DeviceType.mobile;
    }

    if (width < AppBreakpoints.tablet) {
      return DeviceType.tablet;
    }

    return DeviceType.desktop;
  }

  @override
  Widget build(BuildContext context) {
    return builder(context, getDeviceType(context));
  }
}
