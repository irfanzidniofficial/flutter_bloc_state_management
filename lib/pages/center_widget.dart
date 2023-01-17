

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    Key? key,
    required this.mycounter,
  }) : super(key: key);

  // masih data class counter yang sama (via constructor) 
  final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder(
        bloc: mycounter,
        builder: (context, state) {
          return Text(
            "$state",
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
