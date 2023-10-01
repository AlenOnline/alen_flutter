import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вторая страница'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Это вторая страница'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Вернуться на первую страницу'),
            ),
          ],
        ),
      ),
    );
  }
}
