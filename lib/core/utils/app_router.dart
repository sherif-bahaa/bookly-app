import 'package:bookly_app/core/utils/located_services.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/prsentation/manger/simeller_books_cubit/simeller_books_cubit.dart';
import 'package:bookly_app/features/home/prsentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/prsentation/views/home_view.dart';
import 'package:bookly_app/features/search/presntaion/views/search_view.dart';
import 'package:bookly_app/features/splash/persentation/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (BuildContext context, GoRouterState state) {
          return const Splash();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimellerBooksCubit(
              getIt.get<HomeRepoImpl>()
            ),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
    ],
  );
}
