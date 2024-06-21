import 'package:flutter/material.dart';
import 'package:sample/fab.dart';
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
  int secondCounter = 0;
  int thirCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Application'),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyContainer(
              text: counter.toString(),
              color: Colors.red,
            ),
            MyContainer(
              text: secondCounter.toString(),
              color: Colors.blue,
            ),
            MyContainer(
              text: thirCounter.toString(),
              color: Colors.green,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyFAB(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            backgroundColor: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          MyFAB(
            onPressed: () {
              setState(() {
                secondCounter++;
              });
            },
            backgroundColor: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          ),
          MyFAB(
            onPressed: () {
              setState(() {
                thirCounter++;
              });
            },
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
