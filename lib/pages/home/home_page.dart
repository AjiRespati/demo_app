import 'package:demo_app/pages/home/desktop_home_view.dart';
import 'package:demo_app/pages/home/mobile_home_view.dart';
import 'package:demo_app/pages/home/tablet_home_view.dart';
import 'package:flutter/material.dart';

import '../../core/responsive/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: const MobileHomeView(),
      tablet: const TabletHomeView(),
      desktop: const DesktopHomeView(),
    );
  }
}