import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const DesktopLayout({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              border: Border(
                right: BorderSide(
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 24),

                Text(
                  'Demo App',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const SizedBox(height: 24),

                ListTile(
                  selected: selectedIndex == 0,
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () => onDestinationSelected(0),
                ),

                ListTile(
                  selected: selectedIndex == 1,
                  leading: const Icon(Icons.people),
                  title: const Text('Users'),
                  onTap: () => onDestinationSelected(1),
                ),

                ListTile(
                  selected: selectedIndex == 2,
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () => onDestinationSelected(2),
                ),
              ],
            ),
          ),

          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}