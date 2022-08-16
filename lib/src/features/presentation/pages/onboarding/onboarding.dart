import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:upfood/src/config/constants/constants.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/config/route/route.dart';
import 'package:upfood/src/features/presentation/component/buttons/green_button.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';
import 'package:upfood/src/features/presentation/pages/onboarding/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: onboardingContents.length,
            itemBuilder: (content, index) {
              final onboarding = onboardingContents[index];
              return OnboardingContent(
                image: onboarding.image,
                text1: onboarding.text1,
                text2: onboarding.text2,
                dateLength: onboardingContents.length,
                currentIndex: index.toDouble(),
              );
            },
          ),
          const SizedBox(
            height: 200,
          ),
          Positioned(
            top: 600,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                      spacing: 10,
                      radius: 8,
                      dotWidth: 16,
                      dotHeight: 4,
                      dotColor: Colors.white,
                      activeDotColor: Color(0xFF2ECF7F)),
                  onDotClicked: (index) => _controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
                ),
                const SizedBox(height: 40),
                currentIndex == 2
                    ? GreenButton(
                        text: 'Next',
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('showHome', true);
                          // ignore: use_build_context_synchronously
                          navigateTo(Routes.signUpPage, context);
                        },
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeOut);
                        },
                        child: const TextWidget(
                          text: 'Skip',
                          color: Color(0xFF1DC479),
                          fWeight: w700,
                          fSize: 20,
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<OnboardingContent> onboardingContents = [
  const OnboardingContent(
      image: 'assets/images/onboarding/onboarding2.png',
      text1: 'Convenience',
      text2: 'Get your food at confort of your home'),
  const OnboardingContent(
      image: 'assets/images/onboarding/onboarding1.png',
      text1: 'Fast Ordering',
      text2: 'Avoid long queue and get yoiur food delivered in minutes'),
  const OnboardingContent(
      image: 'assets/images/onboarding/onboarding3.png',
      text1: 'Favourite Resturants',
      text2: 'Your favourite resturants is just a click away'),
];
