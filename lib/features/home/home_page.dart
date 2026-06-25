import 'package:demo_app/core/responsive/responsive_builder.dart';
import 'package:demo_app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPage(
      background: const Background(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ResponsiveBuilder(
            mobile: const _HomeCard(width: double.infinity),
            tablet: const _HomeCard(width: 500),
            desktop: const _HomeCard(width: 520),
          ),

          // child: LayoutBuilder(
          //   builder: (context, constraints) {
          //     final width = constraints.maxWidth;

          //     final cardWidth = switch (width) {
          //       < 600 => width * 0.9,
          //       < 1024 => 480.0,
          //       _ => 520.0,
          //     };

          //     return Center(
          //       child: SingleChildScrollView(
          //         padding: const EdgeInsets.all(24),
          //         child: SizedBox(width: cardWidth, child: const _HomeCard()),
          //       ),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  const _HomeCard({required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          width: width,
          child: GlassCard(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/logo.png', height: 160),

                Text(
                  'Demo App',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                SelectableText(
                  'marketing@ajirespati.com',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

                const SizedBox(height: 24),

                GlassButton.custom(
                  shape: LiquidRoundedRectangle(borderRadius: 32),
                  onTap: () => context.go('/user'),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.person_outline, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        "User App",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                GlassButton.custom(
                  shape: LiquidRoundedRectangle(borderRadius: 32),
                  onTap: () => context.go('/admin'),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.admin_panel_settings_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Admin App",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                Text(
                  'Version 1.0.0',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
