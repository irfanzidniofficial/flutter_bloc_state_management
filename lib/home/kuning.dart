import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/home/biru.dart';

class Kuning extends StatelessWidget {
  const Kuning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.amber,
      child: Biru(),
    );
  }
}
