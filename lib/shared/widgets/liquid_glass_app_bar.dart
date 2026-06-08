import 'package:demo_app/shared/widgets/liquid_glass.dart';
import 'package:flutter/material.dart';

class LiquidGlassAppBar extends StatelessWidget {
  final String title;

  const LiquidGlassAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LiquidGlass(
          borderRadius: BorderRadius.circular(22),
          child: Row(
            children: [
              const Icon(
                Icons.apps_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}