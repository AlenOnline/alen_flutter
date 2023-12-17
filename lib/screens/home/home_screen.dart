// home_screen.dart
import 'package:exal/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:exal/screens/qr_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exal/screens/profile_screen.dart'; // Импорт вашего нового экрана
import 'package:exal/screens/news_screen.dart'; // Импорт вашего нового экрана



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  
  Widget build(BuildContext context) {
        String userId = getUserId(); // Получаем идентификатор пользователя
        String userEmail = getUserEmail(); // Получаем идентификатор пользователя

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, you are in, ' + userEmail),
        actions: [
          IconButton(
            onPressed: () {
              context.read<SignInBloc>().add(const SignOutRequired());
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: (index) {
          // Обработка нажатия на элемент нижней панели
          switch (index) {
            case 0:
              // Ничего не делаем или переходим на домашний экран
              break;
            case 1:
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen(title: 'DIO & RETROFIT')),
              );
              break;          
              case 2:
              // Навигация на экран "Profile"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QRCode()),
              );
              break;
          }
        },
      ),
    );
  }
}

String getUserId() {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  // Проверка, вошел ли пользователь в систему
  if (user != null) {
    // Идентификатор текущего пользователя
    return user.uid;
  } else {
    // Пользователь не вошел в систему
    return '';
  }
}
String getUserEmail() {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  // Проверка, вошел ли пользователь в систему
  if (user != null) {
    // Возвращаем email текущего пользователя
    return user.email ?? ''; // Используйте оператор нулевого объединения, чтобы избежать null
  } else {
    // Пользователь не вошел в систему
    return '';
  }
}

