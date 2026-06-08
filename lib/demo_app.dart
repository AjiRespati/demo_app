
import 'package:demo_app/pages/landing/landing_page.dart';
import 'package:demo_app/shared/theme/liquid_theme.dart';
import 'package:flutter/material.dart';


class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: liquidTheme(),
      home: const LandingPage(),
    );
  }
}