import 'package:go_router/go_router.dart';
import 'package:mimamo_link/screens/home.dart';
import 'package:mimamo_link/screens/sign_up.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage()
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpPage()
    )
  ]
);
