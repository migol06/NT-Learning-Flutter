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
    var width = MediaQuery.of(context).size * 0.90;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Application'),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyContainer(
                  text: 'Hello World',
                  color: Colors.red,
                  width: width.width * 0.80,
                  height: width.height * 0.80,
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_msnStlfU2q-m7gPMSGOOenKSNCVYAr25cw&s'),
              const MyContainer(
                text: 'NT',
                color: Colors.blue,
                width: 300,
              ),
              const MyContainer(
                text: 'BSU',
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
