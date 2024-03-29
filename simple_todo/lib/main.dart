import 'package:flutter/material.dart';
import 'package:simple_todo/pages/first_page.dart';
import 'package:simple_todo/pages/home_page.dart';
import 'package:simple_todo/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}


// GRID VIEW BUILDER
/* GridView.builder(
  itemCount: 64,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      // how many you want in each row
      crossAxisCount: 3),
  itemBuilder: (context, index) => Container(
    color: Colors.blue[300],
    margin: EdgeInsets.all(2),
    child: Center(
      child: Text('$index'),
    ),
  ),
), */

// LIST VIEW BUILDER
/* ListView.builder(
  itemCount: names.length,
  itemBuilder: (context, index) => ListTile(
    title: Text('${names[index]}'),
  ),
), */