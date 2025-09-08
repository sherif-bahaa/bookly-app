import 'package:bookly_app/features/home/prsentation/views/home_view.dart';
import 'package:bookly_app/features/splash/persentation/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';

   static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (BuildContext context, GoRouterState state) {
          return const Splash();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
