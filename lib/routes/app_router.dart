import 'package:demo_app/routes/route_names.dart';
import 'package:go_router/go_router.dart';

import '../pages/landing/landing_page.dart';
import '../pages/auth/user_login_page.dart';
import '../pages/auth/admin_login_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),

    GoRoute(
      path: UserLoginRoute,
      builder: (context, state) => const UserLoginPage(),
    ),

    GoRoute(
      path: AdminLoginRoute,
      builder: (context, state) => const AdminLoginPage(),
    ),
  ],
);