import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/pages/center_widget.dart';

import '../bloc/counter.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
    required this.mycounter,
  }) : super(key: key);

  // data yang diambil dari constructor

  final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: CenterWidget(mycounter: mycounter),
    );
  }
}
