import 'package:demo_app/routes/app_router.dart';
import 'package:demo_app/shared/theme/liquid_theme.dart';
import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: liquidTheme(),
      routerConfig: appRouter,
    );
  }
}
