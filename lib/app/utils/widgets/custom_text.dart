import 'package:flutter/material.dart';
import 'package:poc_portal/app/utils/all_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight? fontWeight;

  const CustomText({
    Key? key,
    required this.text,
    this.textColor = AllColors.black,
    this.fontSize = 16,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight
      ),
    );
  }
}
