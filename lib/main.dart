import 'package:flutter/material.dart';
import 'package:ros2vsk/task4.dart';
import 'package:ros2vsk/task5.dart';
import 'package:ros2vsk/task6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ROS-2 Alen (2nd part)'),
      ),
      body: ListView(
        children: <Widget>[
          buildNavigationButton(context, '4 LESSON', Colors.red, Screen4()),
          buildNavigationButton(context, '5 LESSON', Color.fromARGB(255, 76, 156, 29), Screen5()),
          buildNavigationButton(context, '6 LESSON', Color.fromARGB(255, 88, 79, 255), Screen6()),

        ],
      ),
    );
  }
  Widget buildNavigationButton(BuildContext context, String label, Color color, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: color),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Text(label),
    );
  }
}