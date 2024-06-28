import 'package:flutter/material.dart';

class MyCircleContainer extends StatelessWidget {
  const MyCircleContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
