import 'package:flutter/material.dart';

void main() => runApp(StatelessExample());

class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Widget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Мой текст',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}