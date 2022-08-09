import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/route/route.dart';
import 'package:upfood/src/features/presentation/pages/authentication/sign_up_page.dart';
import 'package:upfood/src/features/presentation/pages/onboarding/onboarding.dart';
import 'package:upfood/src/features/presentation/pages/onboarding/onboarding_content.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  
  // prefs.setBool('showHome', false);
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
  // runApp(MaterialApp(
  //   home: const OnboardingPage()
  // ));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Upfood',
        onGenerateRoute: Routes.generate,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(elevation: 0, backgroundColor: Colors.white),
          primarySwatch: Colors.blue,
          backgroundColor: backgroundGreen,
        ),
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Logo.png'),
              // SvgPicture.asset('assets/images/Logo.png'),
              Image.asset('assets/images/onboarding/logo text 1.png'),
              Image.asset('assets/images/onboarding/logo text 2.png'),
              // SvgPicture.asset('assets/images/logo text 1.svg'),
              // SvgPicture.asset('assets/images/logo text 2.svg'),
            ],
          ),
          backgroundColor: backgroundGreen,
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          splashIconSize: 390,
          nextScreen: showHome ? const SignUpPage() : const OnboardingPage(),
        ));
  }
}
