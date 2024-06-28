import 'package:flutter/material.dart';

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
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
            ),
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
