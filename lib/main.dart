import 'package:flutter/material.dart';
import 'anonymous_routes.dart';
import 'named_routes_with_params.dart';
import 'statelessExample.dart';
import 'statefulExample.dart';
import 'columnRowExample.dart';
import 'containerExample.dart';
import 'listViewExample.dart';
import 'gridViewExample.dart';
import 'pageViewExample.dart';
import 'stackExample.dart';
import 'fontsExample.dart';
import 'imageExample.dart';
import 'specialThemeExample.dart';
import 'navigatorExample.dart';

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
        title: Text('ROS-1 Alen'),
      ),
      body: ListView(
        children: <Widget>[
          buildNavigationButton(context, '1. Stateless', Colors.red, StatelessExample()),
          buildNavigationButton(context, '2. Stateful', Colors.red, StatefulExample()),
          buildNavigationButton(context, '3. Container & BoxDecoration', Colors.red, ContainerExample()),
          buildNavigationButton(context, '4. Column & Row', Colors.red, ColumnRowExample()),
          buildNavigationButton(context, '5. ListView', Colors.red, ListViewExample()),
          buildNavigationButton(context, '6. GridView', Colors.red, GridViewExample()),
          buildNavigationButton(context, '7. PageView', Colors.red, PageViewExample()),
          buildNavigationButton(context, '8. Stack, Positioned & IndexedStack', Colors.red, StackExample()),
          buildNavigationButton(context, '9. Fonts', Colors.orange, FontsExample()),
          buildNavigationButton(context, '10. Images', Colors.orange, ImageExample()),
          buildNavigationButton(context, '11. Theme', Colors.orange, SpecialThemeExample()),
          buildNavigationButton(context, '12. Navigator', Colors.green, NavigatorExample()),
          buildNavigationButton(context, '13. Arguments', Colors.green, ArgumentsExample()),
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
