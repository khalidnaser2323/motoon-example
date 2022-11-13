import 'package:flutter/material.dart';
import 'package:motoon_api_example/ui/screens/counterScreen/counter_bloc.dart';
import 'package:motoon_api_example/ui/screens/usersScreen/users_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motoon_api_example/ui/screens/counterScreen/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterScreen(),
      ),
    );
  }
}

/**
 * Task:
 * Write user's list Bloc. 
 * Bloc has events like (LoadUsersEvent)
 * Bloc has state (UserList)
 * Render Users list in user's list screen from UserListBloc using BlocProvider, BlocBuilder
 */
