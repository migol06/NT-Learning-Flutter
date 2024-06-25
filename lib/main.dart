import 'package:flutter/material.dart';
import 'package:sample/my_container.dart';
import 'package:sample/names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var person = Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Application'),
        backgroundColor: Colors.purple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 150.0,
              child: ListView.builder(
                itemCount: person.image.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircleContainer(
                    image: person.image[index],
                  );
                },
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyContainer(
                    text: person.names[index],
                    color: Colors.green,
                  );
                },
                itemCount: person.names.length)
          ],
        ),
      ),
    );
  }
}

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
