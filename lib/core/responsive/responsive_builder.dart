import 'package:flutter/material.dart';

import 'responsive_info.dart';

/// Builds a widget branch for the current responsive breakpoint.
class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  /// Builder used below the mobile breakpoint.
  final WidgetBuilder mobile;

  /// Builder used from tablet breakpoint until desktop breakpoint.
  final WidgetBuilder? tablet;

  /// Builder used at and above the desktop breakpoint.
  final WidgetBuilder? desktop;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveInfo.fromContext(context);

    if (responsive.isDesktop) {
      return (desktop ?? tablet ?? mobile)(context);
    }

    if (responsive.isTablet) {
      return (tablet ?? mobile)(context);
    }

    return mobile(context);
  }
}
