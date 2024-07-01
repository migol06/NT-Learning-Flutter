import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPersonalProfileScreen extends StatelessWidget {
  const MyPersonalProfileScreen({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    // final ScreenArgs args =
    //     ModalRoute.of(context)!.settings.arguments as ScreenArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(image),
            Text(
              name,
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
