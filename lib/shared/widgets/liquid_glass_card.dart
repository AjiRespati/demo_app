import 'package:demo_app/shared/widgets/liquid_glass.dart';
import 'package:flutter/material.dart';

class LiquidGlassCard extends StatelessWidget {
  final Widget child;

  const LiquidGlassCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LiquidGlass(
      child: child,
    );
  }
}