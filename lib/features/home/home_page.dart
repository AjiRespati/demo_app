import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPage(
      background: const _Background(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;

              final cardWidth = switch (width) {
                < 600 => width * 0.9,
                < 1024 => 480.0,
                _ => 520.0,
              };

              return Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: cardWidth,
                    child: const _HomeCard(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  const _HomeCard();

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 200,
          ),


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

          const SizedBox(height: 40),

          SizedBox(
            width: double.infinity,
            height: 56,
            child: FilledButton.icon(
              onPressed: () => context.go('/user'),
              icon: const Icon(Icons.person_outline),
              label: const Text('User App'),
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            height: 56,
            child: OutlinedButton.icon(
              onPressed: () => context.go('/admin'),
              icon: const Icon(Icons.admin_panel_settings_outlined),
              label: const Text('Admin App'),
            ),
          ),

          const SizedBox(height: 32),

          Text(
            'Version 1.0.0',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF5F1EA),
                Color(0xFFEFE8DF),
                Color(0xFFE7DDD0),
              ],
            ),
          ),
        ),

        Positioned(
          top: -120,
          left: -120,
          child: Container(
            width: 320,
            height: 320,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x22B08968),
            ),
          ),
        ),

        Positioned(
          top: 120,
          right: -80,
          child: Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x224A90E2),
            ),
          ),
        ),

        Positioned(
          bottom: -140,
          right: -120,
          child: Container(
            width: 420,
            height: 420,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x2264C8A5),
            ),
          ),
        ),
      ],
    );
  }
}