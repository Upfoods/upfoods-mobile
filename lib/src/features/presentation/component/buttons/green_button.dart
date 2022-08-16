import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final double? height, width;
  final Function()? onPressed;
  const GreenButton({
    Key? key,
    required this.text,
    this.height,
    this.width,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 57,
      width: width ?? 141,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [ AppColor.lightGreen,AppColor.green])),
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          child: TextWidget(
            text: text,
            color: AppColor.white,
            fSize: 16,
            fWeight: w700,
          )),
   
    );
  }
}
