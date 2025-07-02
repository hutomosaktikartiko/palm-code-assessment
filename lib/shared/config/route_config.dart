import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_details/presentation/pages/book_details_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/likes/presentation/pages/likes_page.dart';

enum RouteConfig { home, likes, bookDetails }

extension RouteConfigParsing on RouteConfig {
  String get name {
    switch (this) {
      case RouteConfig.home:
        return 'HOME';
      case RouteConfig.likes:
        return 'LIKES';
      case RouteConfig.bookDetails:
        return 'BOOK_DETAILS';
    }
  }

  String get path {
    switch (this) {
      case RouteConfig.home:
        return '/home';
      case RouteConfig.likes:
        return '/likes';
      case RouteConfig.bookDetails:
        return 'book-details';
    }
  }

  Widget widget({Map? params}) {
    switch (this) {
      case RouteConfig.home:
        return const HomePage();
      case RouteConfig.likes:
        return const LikesPage();
      case RouteConfig.bookDetails:
        return BookDetailsPage(
          params: params?['params'] as BookDetailsPageParams,
        );
    }
  }

  GoRoute goRoute({List<RouteBase> routes = const <RouteBase>[]}) {
    return GoRoute(
      path: path,
      name: name,
      routes: routes,
      builder: (context, state) {
        final extra = state.extra;

        if (extra != null && extra is Map) {
          return widget(params: extra);
        }

        return widget();
      },
    );
  }
}
