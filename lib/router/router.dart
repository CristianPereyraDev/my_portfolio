import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/pages/about/about.dart';
import 'package:my_portfolio/pages/contact/contact.dart';
import 'package:my_portfolio/pages/home/home.dart';
import 'package:my_portfolio/pages/main_scaffold.dart';
import 'package:my_portfolio/pages/work/work.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: "/work",
          builder: (context, state) => const Work(),
        ),
        GoRoute(
          path: "/about",
          builder: (context, state) => const About(),
        ),
        GoRoute(
          path: "/contact",
          builder: (context, state) => const Contact(),
        ),
      ],
    )
  ],
);
