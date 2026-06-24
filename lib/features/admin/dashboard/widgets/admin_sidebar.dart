import 'package:flutter/material.dart';

class AdminSidebar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const AdminSidebar({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Dashboard', Icons.dashboard_outlined),
      ('Users', Icons.people_outline),
      ('Products', Icons.inventory_2_outlined),
      ('Settings', Icons.settings_outlined),
    ];

    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      labelType: NavigationRailLabelType.all,
      destinations: items
          .map(
            (e) =>
                NavigationRailDestination(icon: Icon(e.$2), label: Text(e.$1)),
          )
          .toList(),
    );
  }
}
