import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieRoute extends StatelessWidget {
  const LottieRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Animation',
                  style: TextStyle(fontSize: 20.0), // Устанавливаем размер шрифта в 20.0
      )
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Наш проект в активной разработке"),
              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 300, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/project.json'),
              ),
              const Divider(),

             const Text("Мы каждый день помогаем вам \n лучше понимать математику"),
              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 300, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/sinus2.json'),
              ),
              const Divider(),
              const Text("Вы можете поддержать наш проект"),
              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 300, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/kubik.json'),
              ),
              const Divider(),

              // Другие виджеты здесь...
            ],
          ),
        ),
      ),
    );
  }
}
