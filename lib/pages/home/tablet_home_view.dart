import 'package:flutter/material.dart';

import '../../layout/app_layout.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      selectedIndex: 0,
      onDestinationSelected: (index) {},
      body: const Center(
        child: Text(
          'Tablet Home',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}