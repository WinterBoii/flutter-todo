// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_todo/pages/home_page.dart';
import 'package:simple_todo/pages/counter_page.dart';
import 'package:simple_todo/pages/setting_page.dart';

/// This Dart class named FirstPage extends StatelessWidget.
class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // method to update and navigate to the next page
  void _onNavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //Navigator.of(context).pushReplacementNamed(_pages[index].routeName);
  }

  // keep track of current page
  int _selectedIndex = 0;

  // the pages we have in app
  final List _pages = [
    const HomePage(),
    const CounterPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First Page'),
        backgroundColor: Colors.purple[100],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: ListView(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 40,
              ),
            ),
            ListTile(
              title: const Text('H O M E'),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.popAndPushNamed(context, '/home'),
            ),
            ListTile(
              title: const Text('S E T T I N G S'),
              leading: const Icon(Icons.settings),
              onTap: () => Navigator.popAndPushNamed(context, '/settings'),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),

          // profile
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Counter',
            tooltip: 'Counter',
          ),

          // settings
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
            tooltip: 'Settings',
          ),
        ],
      ),
    );
  }
}
