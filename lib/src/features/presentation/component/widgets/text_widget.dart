
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight? fWeight;
  final double? fSize, wordSpacing;
  final Color? color;
  final TextAlign? textAlign;
  const TextWidget({
    Key? key,
    required this.text,
    this.fWeight,
    this.fSize,
    this.color,
    this.wordSpacing,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fSize,
        fontWeight: fWeight,
        color: color,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
