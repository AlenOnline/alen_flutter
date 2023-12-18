import 'package:alen/features/articles/view/bloc/article_bloc.dart';
import 'package:alen/core/color_ui.dart';
import 'package:alen/core/widget/button_container.dart';
import 'package:alen/core/widget/input_container.dart';
import 'package:alen/features/auth/view/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart'; // Добавим пакет для работы с датой

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: SharedPreferences.getInstance(),
          builder: (context, pref) {
            if (pref.hasData == false || pref.data == null) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorsUi.green,
                ),
              );
            }
            if (pref.data == null) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorsUi.green,
                ),
              );
            }

            DateTime currentDate = DateTime.now();


    



            String? email = pref.data!.getString('email');
            String? name = pref.data!.getString('name');
            // String? role = pref.data!.getString('role');
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Column(
                  children: [
              Text(
                    'Today ${DateFormat('dd-mm-yyyy').format(currentDate)}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

                    const SizedBox(
                      height: 26.0,
                    ),
                    InputContainer(
                      titleText: 'Login',
                      hintText: email,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    // InputContainer(
                    //   titleText: 'Name',
                    //   hintText: name,
                    //   borderRadius: BorderRadius.circular(0),
                    // ),
                    // const SizedBox(
                    //   height: 26.0,
                    // ),
                    // InputContainer(
                    //   titleText: '',
                    //   hintText: '',
                    //   borderRadius: BorderRadius.circular(0),
                    // ),
                    const SizedBox(
                      height: 46.0,
                    ),
                    ButtonContainer(
                        text: 'Change info',
                        color: ColorsUi.green,
                        onTap: () => context.goNamed('change_info')),
                    const SizedBox(
                      height: 24.0,
                    ),
                    ButtonContainer(
                      text: 'Log Out',
                      color: ColorsUi.green,
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context).add(LogOut());
                        context.goNamed('sign_in');
                      },
                    ),

              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 150, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/hello2.json'),
              ),
              const Divider(),

                  ],
                ),
              ),
            );
          }),
    );
    
  }
  
}

