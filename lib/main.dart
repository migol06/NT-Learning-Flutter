import 'package:flutter/material.dart';
import 'package:sample/my_container.dart';

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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Application'),
        backgroundColor: Colors.purple[200],
      ),
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyContainer(
            text: 'Hello World',
            color: Colors.red,
            width: double.infinity,
            alignment: Alignment.bottomRight,
          ),
          MyContainer(
            text: 'NT',
            color: Colors.blue,
            width: 300,
          ),
          MyContainer(
            text: 'BSU',
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
