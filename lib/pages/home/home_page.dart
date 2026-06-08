import 'package:flutter/material.dart';
import '../../core/responsive/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      body: ResponsiveBuilder(
        mobile: const _MobileView(),
        tablet: const _TabletView(),
        desktop: const _DesktopView(),
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  const _MobileView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Mobile View',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class _TabletView extends StatelessWidget {
  const _TabletView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tablet View',
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}

class _DesktopView extends StatelessWidget {
  const _DesktopView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Desktop View',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}