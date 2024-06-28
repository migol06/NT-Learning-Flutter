import 'package:flutter/material.dart';
import 'package:sample/data/data.dart';

class MyPersonalProfileScreen extends StatelessWidget {
  const MyPersonalProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScreenArgs args =
        ModalRoute.of(context)!.settings.arguments as ScreenArgs;
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
                  image: NetworkImage(args.image),
                ),
              ),
            ),
            Text(
              args.name,
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
