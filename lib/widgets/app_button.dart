import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;

  const AppButton(
      {Key? key,
        this.text = "",
        required this.size,
        required this.color,
        required this.backgroundColor,
        required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: Center(child: AppText(text: text!, color: color)),
    );
  }
}
