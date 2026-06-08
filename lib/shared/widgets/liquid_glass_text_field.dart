import 'package:demo_app/shared/widgets/liquid_glass.dart';
import 'package:flutter/material.dart';

class LiquidGlassTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const LiquidGlassTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return LiquidGlass(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white.withValues(alpha: 0.5),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}