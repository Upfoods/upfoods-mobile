
import 'package:flutter/material.dart';

class LogoAndNameWidget extends StatelessWidget {
  const LogoAndNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Logo.png',
          width: 155,
          height: 173.73,
        ),
        Image.asset(
          'assets/images/onboarding/logo text 1.png',
          height: 56.655,
          width: 105.93,
        ),
        Image.asset(
          'assets/images/onboarding/logo text 2.png',
          height: 10,
          width: 171.17,
        ),
      ],
    );
  }
}
