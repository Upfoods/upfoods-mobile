import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/constants.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class OnboardingContent extends StatelessWidget {
  final String image, text1, text2;
  final double? currentIndex;
  final int? dateLength;
  const OnboardingContent(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      this.dateLength,
      this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundGreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: screenWidth(context),
            height: 395,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Image.asset(image,fit: BoxFit.cover),
          ),
          SizedBox(
            width: 250,
            child: Column(
              children: [
                const SizedBox(height: 40),
                TextWidget(
                  text: text1,
                  fSize: 24,
                  fWeight: w700,
                ),
                const SizedBox(height: 20),
                TextWidget(
                  text: text2,
                  fSize: 18,
                  fWeight: w400,
                  wordSpacing: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
