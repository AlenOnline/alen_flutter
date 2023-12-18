import 'package:flutter/material.dart';
import 'package:alen/features/story/story_screen.dart';
import 'package:alen/features/story/animation_screen.dart';
import 'package:alen/features/story/news_screen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: MediaScreen(),
  ));
}

class MediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 300, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/project.json'),
              ),
              const Divider(),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsScreen(title: 'News', )),


                );
              },
              child: Text('News'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LottieRoute()),
                );
              },
              child: Text('Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoryPageView()),
                );
              },
              child: Text('Stories'),
            ),
          ],
        ),
      ),
    );
  }
}

