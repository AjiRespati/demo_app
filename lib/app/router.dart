import 'package:go_router/go_router.dart';

import '../features/home/pages/home_page.dart';

/// Application route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
  ],
);
