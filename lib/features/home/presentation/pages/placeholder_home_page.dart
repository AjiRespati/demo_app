import 'package:demo_app/core/theme/app_theme_extention.dart';
import 'package:flutter/material.dart';

class PlaceholderHomePage extends StatelessWidget {
  const PlaceholderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppThemeExtension>()!;

    return Scaffold(
      appBar: AppBar(title: const Text("Glass Admin Kit")),
      body: Center(
        child: Container(
          width: 300,
          height: 180,
          decoration: BoxDecoration(
            color: glass.glassBackground,
            borderRadius: BorderRadius.circular(glass.borderRadius),
            border: Border.all(color: glass.glassBorder),
          ),
          child: const Center(child: Text("GAK-002 Completed")),
        ),
      ),
    );
  }
}
