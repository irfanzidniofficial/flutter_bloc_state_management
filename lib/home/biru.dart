import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/home/center_data.dart';

class Biru extends StatelessWidget {
  const Biru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.blue,
      child: const CenterData(),
    );
  }
}
