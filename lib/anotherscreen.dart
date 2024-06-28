import 'package:flutter/material.dart';

class MySecondSreen extends StatelessWidget {
  const MySecondSreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
