import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key,
      required this.text,
      required this.color,
      this.height = 100,
      this.width = 100,
      this.alignment = Alignment.center});

  final String text;
  final Color color;
  final double height;
  final double width;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      alignment: alignment,
      child: Text(text),
      // foregroundDecoration: BoxDecoration(),
    );
  }
}
