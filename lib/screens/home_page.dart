import 'package:flutter/material.dart';
import 'package:sample/data/data.dart';
import 'package:sample/screens/screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    MyHomeBody(person: Person()),
    MyListNameBody(person: Person()),
    const MyStarBody()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.star), label: 'Star'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
      ),
      appBar: AppBar(
        title: const Text('Messenger Application'),
        backgroundColor: Colors.purple[200],
      ),
      body: _screens[currentIndex],
    );
  }
}
