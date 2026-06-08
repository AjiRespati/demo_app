import 'package:demo_app/shared/widgets/liquid_glass.dart';
import 'package:flutter/material.dart';

class LiquidGlassBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onChanged;

  const LiquidGlassBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LiquidGlass(
          borderRadius: BorderRadius.circular(32),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround,
            children: [
              _item(Icons.home, 0),
              _item(Icons.search, 1),
              _item(Icons.person, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(
    IconData icon,
    int index,
  ) {
    final active = index == selectedIndex;

    return IconButton(
      onPressed: () => onChanged(index),
      icon: Icon(
        icon,
        color: active
            ? Colors.white
            : Colors.white54,
      ),
    );
  }
}