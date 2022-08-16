import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/text.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final Color? prefixIconColor;
  final bool hidePassword;
  final String Function(String?)? validator;
  final VoidCallback? onVisibilityIconPressed;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.prefixIconColor,
    required this.hidePassword,
    this.onVisibilityIconPressed,
    this.validator, this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: 335,
      child: TextFormField(
        obscureText: hidePassword,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(prefixIcon, color: prefixIconColor),
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: w400,
            color: AppColor.grey,
          ),
          filled: true,
          fillColor: AppColor.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
