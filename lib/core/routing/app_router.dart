import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/routing/routes.dart';
import 'package:flutter_complete_app/features/login/ui/screens/login_screen.dart';
import 'package:flutter_complete_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_app/features/signup/ui/screens/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
