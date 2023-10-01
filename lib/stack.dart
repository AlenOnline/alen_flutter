import 'package:flutter/material.dart';
import 'widgets/aboutIsland.dart';
import 'widgets/backgroundImage.dart';
import 'widgets/heartIcon.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1, 1),
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}