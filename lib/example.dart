import 'package:flutter/material.dart';
import 'widgets/aboutIsland.dart';
import 'widgets/backgroundImage.dart';
import 'widgets/heartIcon.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}