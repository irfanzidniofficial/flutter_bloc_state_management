import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/404/404.dart';
import 'package:flutter_bloc_state_management/bloc/counter.dart';
import 'package:flutter_bloc_state_management/other/other.dart';

import '../home/home.dart';

class MyRouter {
  final Counter mycounter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const HomePage(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: const OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
