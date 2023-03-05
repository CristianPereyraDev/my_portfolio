import 'package:go_router/go_router.dart';
import 'package:my_portfolio/pages/about/about.dart';
import 'package:my_portfolio/pages/contact/contact.dart';
import 'package:my_portfolio/pages/home/home.dart';
import 'package:my_portfolio/pages/work/work.dart';

// GoRouter configuration
final router = GoRouter(routes: [
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
]);
