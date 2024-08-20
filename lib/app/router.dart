import 'package:go_router/go_router.dart';

import '../core/globale.dart';
import '../screens/home.dart';

final router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
