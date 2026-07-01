import 'package:go_router/go_router.dart';

import 'package:demo_app/features/home/presentation/pages/showcase_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const ShowcasePage()),
  ],
);
