import 'package:flutter/material.dart';

import '../../layout/app_layout.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      selectedIndex: 0,
      onDestinationSelected: (index) {},
      body: const Center(
        child: Text(
          'Mobile Home',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}