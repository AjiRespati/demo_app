import 'package:flutter/material.dart';

import '../core/theme/theme.dart';
import 'router.dart';

/// Root application widget.
class GlassAdminKitApp extends StatelessWidget {
  const GlassAdminKitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Glass Admin Kit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      routerConfig: appRouter,
    );
  }
}
