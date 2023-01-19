import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return BlocBuilder(
      bloc: mycounter,
      builder: (context, state) {
        return Text(
          '$state',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        );
      },
    );
  }
}
