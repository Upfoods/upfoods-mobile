import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/constants.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/config/route/route.dart';
import 'package:upfood/src/features/presentation/component/buttons/green_button.dart';
import 'package:upfood/src/features/presentation/component/buttons/white_button.dart';
import 'package:upfood/src/features/presentation/component/icons/app_icons.dart';
import 'package:upfood/src/features/presentation/component/widgets/custom_check_box.dart';
import 'package:upfood/src/features/presentation/component/widgets/custom_text_form_field.dart';
import 'package:upfood/src/features/presentation/component/widgets/logo_and_name_widget.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hidePassword = true, isSigned = false, emailMe = false;

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
                  text: 'Sign Up For Free',
                  fSize: 20,
                  fWeight: w700,
                ),
                const SizedBox(height: 30),
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
                  text: 'Or Continue With',
                  fSize: 12,
                  fWeight: w500,
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  hintText: 'Your Name',
                  hidePassword: false,
                  prefixIcon: Icons.person,
                  prefixIconColor: AppColor.green,
                ),
                const SizedBox(height: 5),
                const CustomTextFormField(
                  hintText: 'Email',
                  hidePassword: false,
                  prefixIcon: Icons.attach_email,
                  prefixIconColor: AppColor.green,
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  hidePassword: hidePassword,
                  prefixIcon: Icons.lock,
                  prefixIconColor: AppColor.green,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility,
                      color: AppColor.grey,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomCheckBox(
                  isChecked: isSigned,
                  text: 'Keep Me Signed In',
                  onChanged: (bool? value) {
                    setState(() {
                      isSigned = value!;
                    });
                  },
                ),
                CustomCheckBox(
                  isChecked: emailMe,
                  text: 'Email Me About Special Pricing',
                  onChanged: (bool? value) {
                    setState(() {
                      emailMe = value!;
                    });
                  },
                ),
                const SizedBox(height: 30),
                const GreenButton(text: 'Create Account',width: 175,),
                const SizedBox(height: 30),
                TextWidget(
                  text: 'Already have an account? Log In',
                  fSize: 12,
                  fWeight: w500,
                  onClickableCallBack: () => navigateTo(Routes.signInPage, context),
                  // color: Color(0xFF3E88B),
                  color: AppColor.green,
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
