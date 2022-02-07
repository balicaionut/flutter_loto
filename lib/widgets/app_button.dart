import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Color color;
  final Color backgroundColor;
  final double height;
  final double width;
  final Color borderColor;
  final double fontSize;


  const AppButton({Key? key,
    this.text = "",
    required this.height,
    required this.width,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    this.fontSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: Center(child: AppText(text: text!, color: color, size: fontSize,)),
    );
  }
}
