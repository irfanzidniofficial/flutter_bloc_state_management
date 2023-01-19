import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter.dart';
import 'package:flutter_bloc_state_management/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => Counter(),
    //   child: const MaterialApp(
    //     home: HomePage(),
    //   ),
    // );
    // return
    return MaterialApp(
      home: BlocProvider(
        create: (context) => Counter(),
        child: const HomePage(),
      ),
    );
  }
}
