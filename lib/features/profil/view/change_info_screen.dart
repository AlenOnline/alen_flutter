import 'dart:async';

import 'package:alen/features/auth/view/bloc/auth_bloc.dart';
import 'package:alen/core/color_ui.dart';
import 'package:alen/core/widget/button_container.dart';
import 'package:alen/core/widget/input_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ChangeInfoScreen extends StatefulWidget {
  ChangeInfoScreen({Key? key}) : super(key: key);

  @override
  _ChangeInfoScreenState createState() => _ChangeInfoScreenState();
}

class _ChangeInfoScreenState extends State<ChangeInfoScreen> {
  final TextEditingController nameController = TextEditingController();
  String? dropValue;

  final List<String> dropDownValues = ["Student", "Teacher", "Guest"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Column(
            children: [
              const SizedBox(
                height: 95.0,
              ),
              InputContainer(
                titleText: 'Name',
                controller: nameController,
              ),
              const SizedBox(
                height: 24.0,
              ),
              DropdownButton<String>(
                value: dropValue,
                items: dropDownValues.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropValue = value;
                  });
                },
                hint: Text('Select Role'), // Подсказка для списка
              ),
              const SizedBox(
                height: 40.0,
              ),
              ButtonContainer(
                text: 'Add new data',
                color: ColorsUi.green,
                onTap: () {
                  Completer compl = Completer();
                  BlocProvider.of<AuthBloc>(context).add(
                    UpdateData(
                      completer: compl,
                      name: nameController.text.trim(),
                      role: dropValue ?? '', // Используем выбранное значение роли
                    ),
                  );
                  compl.future.then((value) => context.go('/profil'));
                },
              ),
              const SizedBox(height: 10),
              // Load an animation and its images from a zip file
              Container(
                width: 300, // Ширина контейнера с анимацией
                height: 150, // Высота контейнера с анимацией
                child: Lottie.asset('assets/animations/problem.json'),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
