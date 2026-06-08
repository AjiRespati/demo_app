import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  static const double mobileBreakpoint = 768;
  static const double desktopBreakpoint = 1200;

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  /// Maksimal lebar konten.
  /// Cocok untuk form, halaman detail, dsb.
  final double maxContentWidth;

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.maxContentWidth = 1200,
  });

  // ---------------------------------------------------------------------------
  // Device Detection
  // ---------------------------------------------------------------------------

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobile(BuildContext context) {
    return screenWidth(context) < mobileBreakpoint;
  }

  static bool isTablet(BuildContext context) {
    return screenWidth(context) >= mobileBreakpoint &&
        screenWidth(context) < desktopBreakpoint;
  }

  static bool isDesktop(BuildContext context) {
    return screenWidth(context) >= desktopBreakpoint;
  }

  // ---------------------------------------------------------------------------
  // Layout Helpers
  // ---------------------------------------------------------------------------

  static EdgeInsets pagePadding(BuildContext context) {
    final width = screenWidth(context);

    if (width >= desktopBreakpoint) {
      return const EdgeInsets.all(32);
    }

    if (width >= mobileBreakpoint) {
      return const EdgeInsets.all(24);
    }

    return const EdgeInsets.all(16);
  }

  static double contentMaxWidth(BuildContext context) {
    final width = screenWidth(context);

    if (width >= 1600) {
      return 1400;
    }

    if (width >= desktopBreakpoint) {
      return 1200;
    }

    return width;
  }

  static int gridColumns(BuildContext context) {
    final width = screenWidth(context);

    if (width >= 1600) {
      return 5;
    }

    if (width >= desktopBreakpoint) {
      return 4;
    }

    if (width >= mobileBreakpoint) {
      return 2;
    }

    return 1;
  }

  static double cardSpacing(BuildContext context) {
    final width = screenWidth(context);

    if (width >= desktopBreakpoint) {
      return 24;
    }

    if (width >= mobileBreakpoint) {
      return 16;
    }

    return 12;
  }

  // ---------------------------------------------------------------------------
  // Widget Build
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);

    Widget content;

    if (width >= desktopBreakpoint) {
      content = desktop ?? tablet ?? mobile;
    } else if (width >= mobileBreakpoint) {
      content = tablet ?? mobile;
    } else {
      content = mobile;
    }

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxContentWidth,
        ),
        child: content,
      ),
    );
  }
}