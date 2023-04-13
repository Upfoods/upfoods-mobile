import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class SmallWhiteButton extends StatelessWidget {
  final Widget widget;
  final double? height, width;
  final Function()? onPressed;
  const SmallWhiteButton(
      {Key? key, required this.widget, this.height, this.width, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Color(0xFF5A6CEA)),
        ],
        borderRadius: BorderRadius.circular(15),
        color: AppColor.white,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: widget,
      ),
    );
  }
}
