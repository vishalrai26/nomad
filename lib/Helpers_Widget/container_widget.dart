import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final dynamic height;
  final dynamic width;
  final Color? color;
  final BoxDecoration decoration;
  const ContainerWidget({
    Key? key,
    required this.height,
    required this.width,
    this.color,
    required this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      decoration: decoration,
    );
  }
}
