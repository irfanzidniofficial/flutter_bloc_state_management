import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Counter mycounter = Counter(init: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC LISTENER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<Counter, int>(
            bloc: mycounter,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text("DATA GENAP"),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            child: BlocBuilder<Counter, int>(
              bloc: mycounter,
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  mycounter.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  mycounter.increment();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}