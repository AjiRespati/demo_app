enum ResponsiveDevice { mobile, tablet, desktop }

class ResponsiveInfo {
  const ResponsiveInfo({required this.device, required this.width});

  final ResponsiveDevice device;
  final double width;

  bool get isMobile => device == ResponsiveDevice.mobile;

  bool get isTablet => device == ResponsiveDevice.tablet;

  bool get isDesktop => device == ResponsiveDevice.desktop;
}
