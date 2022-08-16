import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/constants.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/config/route/route.dart';
import 'package:upfood/src/features/presentation/component/buttons/green_button.dart';
import 'package:upfood/src/features/presentation/component/buttons/white_button.dart';
import 'package:upfood/src/features/presentation/component/icons/app_icons.dart';
import 'package:upfood/src/features/presentation/component/widgets/custom_text_form_field.dart';
import 'package:upfood/src/features/presentation/component/widgets/logo_and_name_widget.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LogoAndNameWidget(),
                const SizedBox(height: 60),
                const TextWidget(
                  text: 'Log In To Your Account',
                  fSize: 20,
                  fWeight: w700,
                ),
                const SizedBox(height: 30),
                const CustomTextFormField(
                  hintText: 'Email',
                  hidePassword: false,
                ),
                const SizedBox(height: 5),
                const CustomTextFormField(
                  hintText: 'Password',
                  hidePassword: false,
                ),
                const SizedBox(height: 20),
                const TextWidget(
                  text: 'Or Continue With',
                  fSize: 12,
                  fWeight: w500,
                ),
                const SizedBox(height: 20),
                WhiteButton(
                    widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppIcons.google_icon,
                    const SizedBox(
                      width: 5,
                    ),
                    const TextWidget(
                      text: 'Google',
                      fSize: 14,
                      fWeight: w500,
                    )
                  ],
                )),
                const SizedBox(height: 30),
                const TextWidget(
                  text: 'Forgot Your Password?',
                  fSize: 12,
                  fWeight: w500,
                  onClickableCallBack: null,
                  // color: Color(0xFF3E88B),
                  color: AppColor.green,
                  decoration: TextDecoration.underline,
                ),
                const SizedBox(height: 30),
                const GreenButton(text: 'Login'),
                const SizedBox(height: 30),
                TextWidget(
                  text: 'No Account? Sign Up',
                  fSize: 12,
                  fWeight: w500,
                  onClickableCallBack: () => navigateTo(Routes.signUpPage, context),
                  // color: Color(0xFF3E88B),
                  color: const Color(0xFF15BE77),
                  decoration: TextDecoration.underline,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
