import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight? fWeight;
  final double? fSize, wordSpacing;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final Function()? onClickableCallBack;
  const TextWidget({
    Key? key,
    required this.text,
    this.fWeight,
    this.fSize,
    this.color,
    this.wordSpacing,
    this.textAlign,
    this.decoration, this.onClickableCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickableCallBack,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: fSize,
          fontWeight: fWeight,
          color: color,
          wordSpacing: wordSpacing,
          decoration: decoration,
          // decorationStyle: TextDecorationStyle.double,
        ),
      ),
    );
  }
}
