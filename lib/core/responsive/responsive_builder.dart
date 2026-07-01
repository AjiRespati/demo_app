import 'package:flutter/widgets.dart';

import 'package:demo_app/core/responsive/responsive_extension.dart';
import 'package:demo_app/core/responsive/responsive_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({required this.builder, super.key});

  final Widget Function(BuildContext context, ResponsiveInfo info) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, context.responsive);
  }
}
