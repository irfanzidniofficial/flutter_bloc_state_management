import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/home/kuning.dart';

class Merah extends StatelessWidget {
  const Merah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: const Kuning(),
    );
  }
}
