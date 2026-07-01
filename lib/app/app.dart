import 'package:demo_app/core/theme/app_theme.dart';
import 'package:demo_app/features/home/presentation/pages/placeholder_home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glass Admin Kit',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      home: const PlaceholderHomePage(),
    );
  }
}