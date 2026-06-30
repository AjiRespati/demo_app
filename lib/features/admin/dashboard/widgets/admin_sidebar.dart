import 'package:flutter/material.dart';

class AdminSidebar extends StatelessWidget {
  final int selectedIndex;
  final bool collapsed;
  final VoidCallback onToggle;
  final ValueChanged<int> onSelected;

  const AdminSidebar({
    super.key,
    required this.selectedIndex,
    required this.collapsed,
    required this.onToggle,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onToggle,
          icon: Icon(collapsed ? Icons.chevron_right : Icons.chevron_left),
        ),

        Expanded(
          child: NavigationRail(
            extended: !collapsed,
            selectedIndex: selectedIndex,
            onDestinationSelected: onSelected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_outline),
                label: Text('Users'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.inventory_2_outlined),
                label: Text('Products'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings_outlined),
                label: Text('Settings'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
