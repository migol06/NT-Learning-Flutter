import 'package:flutter/material.dart';

class MyFAB extends StatelessWidget {
  const MyFAB(
      {super.key,
      required this.onPressed,
      this.icon = Icons.add,
      required this.backgroundColor,
      this.foregroundColor = Colors.white});

  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: Icon(icon),
    );
  }
}
