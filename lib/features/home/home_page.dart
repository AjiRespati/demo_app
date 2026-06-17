import 'package:flutter/material.dart';

import '../../core/responsive/responsive_builder.dart';
import '../../core/responsive/responsive_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      child: ResponsiveBuilder(
        builder: (context, deviceType) {
          switch (deviceType) {
            case DeviceType.mobile:
              return const _MobileLayout();

            case DeviceType.tablet:
              return const _TabletLayout();

            case DeviceType.desktop:
              return const _DesktopLayout();
          }
        },
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Mobile'),
    );
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tablet'),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Desktop'),
    );
  }
}