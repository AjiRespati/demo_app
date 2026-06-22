import 'package:demo_app/features/admin/auth/admin_auth_page.dart';
import 'package:demo_app/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (c, s) => const HomePage()),
    GoRoute(
      path: '/user',
      builder: (c, s) => const Scaffold(body: Center(child: Text('User App'))),
    ),

    GoRoute(path: '/admin', builder: (c, s) => const AdminAuthPage()),
  ],
);
