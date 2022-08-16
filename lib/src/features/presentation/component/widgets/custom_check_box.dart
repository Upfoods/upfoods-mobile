import 'package:flutter/material.dart';
import 'package:upfood/src/config/constants/colors.dart';
import 'package:upfood/src/config/constants/text.dart';
import 'package:upfood/src/features/presentation/component/widgets/text_widget.dart';

class CustomCheckBox extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function(bool?)? onChanged;
  const CustomCheckBox(
      {Key? key, required this.isChecked, this.onChanged, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.all(AppColor.green),
            value: isChecked,
            shape: const CircleBorder(),
            onChanged: onChanged,
            // onChanged: (bool? value) {
            //   setState(() {
            //     isChecked = value!;
            //   });
            // },
          ),
          TextWidget(
            text: text,
            fSize: 12,
            fWeight: w500,
            // color: Color(0xFF3E88B),
            color: AppColor.grey,
          ),
        ],
      ),
    );
  }
}
