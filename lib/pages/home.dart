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
        title: const Text("BLOC BUILDER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Pakai BlocBuilder
          BlocBuilder<Counter, int>(
            bloc: mycounter,
            buildWhen: (previous, current) {
              if (current % 2 == 1) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Text(
                "$state",
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),

          // Pakai Stream Builder

          // StreamBuilder(
          //   initialData: mycounter.init,
          //   stream: mycounter.stream,
          //   builder: (context, snapshot) {
          //     return Text(
          //       "${snapshot.data}",
          //       style: const TextStyle(
          //         fontSize: 50,
          //       ),
          //     );
          //   },
          // ),
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
