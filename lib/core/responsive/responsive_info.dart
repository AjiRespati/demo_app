import 'package:flutter/material.dart';

import '../tokens/tokens.dart';

/// Immutable responsive state derived from the current viewport.
@immutable
class ResponsiveInfo {
  const ResponsiveInfo({required this.width, required this.height});

  factory ResponsiveInfo.fromContext(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ResponsiveInfo(width: size.width, height: size.height);
  }

  /// Current viewport width.
  final double width;

  /// Current viewport height.
  final double height;

  /// Whether the viewport is below the mobile breakpoint.
  bool get isMobile => width < AppBreakpoints.mobile;

  /// Whether the viewport is between mobile and desktop breakpoints.
  bool get isTablet {
    return width >= AppBreakpoints.mobile && width < AppBreakpoints.desktop;
  }

  /// Whether the viewport is at or above the desktop breakpoint.
  bool get isDesktop => width >= AppBreakpoints.desktop;

  /// Recommended page padding for the current breakpoint.
  double get pagePadding {
    if (isDesktop) {
      return AppSpacing.xl;
    }

    if (isTablet) {
      return AppSpacing.lg;
    }

    return AppSpacing.md;
  }

  /// Recommended maximum content width for the current breakpoint.
  double get contentWidth {
    if (isDesktop) {
      return AppBreakpoints.desktopContentWidth;
    }

    if (isTablet) {
      return AppBreakpoints.tabletContentWidth;
    }

    return width;
  }

  /// Recommended grid column count for the current breakpoint.
  int get columns {
    if (width >= AppBreakpoints.wideDesktop) {
      return AppBreakpoints.wideDesktopColumns;
    }

    if (isDesktop) {
      return AppBreakpoints.desktopColumns;
    }

    if (isTablet) {
      return AppBreakpoints.tabletColumns;
    }

    return AppBreakpoints.mobileColumns;
  }
}
