import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upfood/src/features/presentation/pages/authentication/sign_up_page.dart';

class Routes {
  static const signUpPage = 'signUpPage';

  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
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
