import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final bool? softWrap = false;
  final TextStyle fonts;
  final TextDecoration? decoration;
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontSize,
      required this.fonts,
      this.decoration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize, fontFamily: fonts.toString()),
    );
  }
}
