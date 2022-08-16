import 'package:flutter/material.dart';
import 'package:upfood/src/features/presentation/pages/authentication/sign_in_page.dart';
import 'package:upfood/src/features/presentation/pages/authentication/sign_up_page.dart';

class Routes {
  static const signUpPage = 'signUpPage';
  static const signInPage = 'signInPage';

  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case signInPage:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
