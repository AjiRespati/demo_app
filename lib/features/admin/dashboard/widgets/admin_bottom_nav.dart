import 'package:flutter/material.dart';

class AdminBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const AdminBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          label: 'Dashboard',
        ),
        NavigationDestination(icon: Icon(Icons.people_outline), label: 'Users'),
        NavigationDestination(
          icon: Icon(Icons.inventory_2_outlined),
          label: 'Products',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
    );
  }
}
