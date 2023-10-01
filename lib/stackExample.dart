import 'package:flutter/material.dart';
import 'indexedStack.dart';
import 'positioned.dart';
import 'stack.dart';

void main() => runApp(StackExample());

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack & Positioned Widgets'),
        ),
        // body: Example(),
        // body: StackWidget(),
        // body: PositionedWidget(),
        body: IndexedStackWidget(),
      ),
    );
  }
}