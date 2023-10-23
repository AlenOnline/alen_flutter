import 'package:flutter/material.dart';
import 'package:ros2vsk/task1.dart';
import 'package:ros2vsk/task2.dart';
import 'package:ros2vsk/task3.dart';

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
        title: Text('ROS-2 Alen (1st part)'),
      ),
      body: ListView(
        children: <Widget>[
          buildNavigationButton(context, '1 LESSON', Colors.red, Screen1()),
          buildNavigationButton(context, '2 LESSON', Color.fromARGB(255, 76, 156, 29), Screen2()),
          buildNavigationButton(context, '3 LESSON', Color.fromARGB(255, 88, 79, 255), Screen3()),

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