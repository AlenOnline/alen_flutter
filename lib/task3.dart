import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ros2vsk/counter_bloc.dart';
import 'package:ros2vsk/bloc/user_bloc.dart';

void main() {
  runApp(const Screen3());
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
        BlocProvider<UserBloc>(
          create: (context) => UserBloc(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final counterBloc = BlocProvider.of<CounterBloc>(context);
          return Scaffold(
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    counterBloc.add(CounterIncEvent());
                  },
                  icon: const Icon(Icons.plus_one),
                ),
                IconButton(
                  onPressed: () {
                    counterBloc.add(CounterDecEvent());
                  },
                  icon: const Icon(Icons.exposure_minus_1),
                ),
                IconButton(
                  onPressed: () {
                    final userBloc = context.read<UserBloc>();
                    userBloc.add(UserGetUsersEvent(context.read<CounterBloc>().state));
                  },
                  icon: const Icon(Icons.person),
                ),
                IconButton(
                  onPressed: () {
                    final userBloc = context.read<UserBloc>();
                    userBloc.add(UserGetUsersJobEvent(context.read<CounterBloc>().state));
                  },
                  icon: const Icon(Icons.work),
                ),
              ],
            ),
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    BlocBuilder<CounterBloc, int>(
                      // bloc: counterBloc,
                      builder: (context, state) {
                        final users = context.select((UserBloc bloc) => bloc.state.users);
                        return Column(
                          children: [
                            Text(state.toString(), style: TextStyle(fontSize: 33)),
                            if (users.isNotEmpty)
                              ...users.map((e) => Text(e.name)),
                          ],
                        );
                      },
                    ),
                    BlocBuilder<UserBloc, UserState>(
                      // bloc: userBloc,
                      builder: (context, state) {
                        final job = state.job;
                        return Column(
                          children: [
                            if (state.isLoading)
                              const CircularProgressIndicator(),
                            // if (users.isNotEmpty)
                            //   ...users.map((e) => Text(e.name)),
                            if (job.isNotEmpty)
                              ...job.map((e) => Text(e.name)),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}