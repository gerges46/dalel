import 'package:go_router/go_router.dart';
import 'package:projectapp/features/auth/presention/views/sign_in.dart';
import 'package:projectapp/features/auth/presention/views/singup.dart';
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
    GoRoute(
      path: '/signUp',
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) => SignInView(),
    ),

  ],
);