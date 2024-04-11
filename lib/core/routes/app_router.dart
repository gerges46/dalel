import 'package:go_router/go_router.dart';
import 'package:projectapp/features/onboarding/presention/views/onboaeding_view.dart';
import 'package:projectapp/features/splash/presentaion/views/splash_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SpalshView(),
    ),
    GoRoute(
      path: '/OnBoarding',
      builder: (context, state) => OnBoardingView(),
    ),
  ],
);