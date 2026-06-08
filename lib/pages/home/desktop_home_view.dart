import 'package:flutter/material.dart';

import '../../layout/app_layout.dart';

class DesktopHomeView extends StatelessWidget {
  const DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      selectedIndex: 0,
      onDestinationSelected: (index) {},
      body: const Center(
        child: Text(
          'Desktop Home',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}