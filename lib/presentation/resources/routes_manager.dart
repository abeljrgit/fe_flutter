import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:fe_flutter/presentation/screen/home/home_screen.dart';
import 'package:fe_flutter/presentation/screen/about_me/about_me_screen.dart';
import 'package:fe_flutter/presentation/screen/blogs/blogs_screen.dart';
import 'package:fe_flutter/presentation/screen/works/works_screen.dart';

class RouteManager {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      /////////////////////////////////
      /// Home
      /////////////////////////////////
      // path: /
      GoRoute(
        path: HomeScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),

      /////////////////////////////////
      /// About Me
      /////////////////////////////////
      // path: /about-me
      GoRoute(
        path: AboutMeScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const AboutMeScreen();
        },
      ),

      /////////////////////////////////
      /// Blogs
      /////////////////////////////////
      // path: /blogs
      GoRoute(
        path: BlogsScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const BlogsScreen();
        },
      ),

      /////////////////////////////////
      /// Works
      /////////////////////////////////
      // path: /works
      GoRoute(
        path: WorksScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const WorksScreen();
        },
      ),
    ],
  );
}
