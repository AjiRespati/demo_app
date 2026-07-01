import 'package:flutter/widgets.dart';

import 'package:demo_app/core/responsive/responsive_info.dart';
import 'package:demo_app/core/tokens/app_breakpoints.dart';

extension ResponsiveExtension on BuildContext {
  ResponsiveInfo get responsive {
    final width = MediaQuery.sizeOf(this).width;

    if (width < AppBreakpoints.mobile) {
      return ResponsiveInfo(device: ResponsiveDevice.mobile, width: width);
    }

    if (width < AppBreakpoints.desktop) {
      return ResponsiveInfo(device: ResponsiveDevice.tablet, width: width);
    }

    return ResponsiveInfo(device: ResponsiveDevice.desktop, width: width);
  }
}
