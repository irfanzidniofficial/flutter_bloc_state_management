import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/home/merah.dart';

import '../bloc/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DEPENDENCY INJECTION",
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  // decrement
                  mycounter.decrement();
                },
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Merah(),
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  // increment
                  mycounter.increment();
                },
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
