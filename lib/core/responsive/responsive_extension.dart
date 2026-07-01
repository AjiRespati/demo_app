import 'package:flutter/widgets.dart';

import 'responsive_info.dart';

/// Responsive shortcut for contexts that only import core/responsive.
extension ResponsiveBuildContextExtension on BuildContext {
  /// Current responsive viewport information.
  ResponsiveInfo get responsiveInfo => ResponsiveInfo.fromContext(this);
}
