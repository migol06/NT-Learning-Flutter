import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key,
      required this.text,
      required this.color,
      this.height = 100,
      this.width = 100,
      this.alignment = Alignment.center,
      this.url = ''});

  final String text;
  final Color color;
  final double height;
  final double width;
  final AlignmentGeometry alignment;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      alignment: alignment,
      child: Text(text),
      // foregroundDecoration: BoxDecoration(),
    );
  }
}
