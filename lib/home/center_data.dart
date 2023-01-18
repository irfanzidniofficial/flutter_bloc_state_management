import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/home/data_widget.dart';




class CenterData extends StatelessWidget {
  const CenterData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DataWidget(),
    );
  }
}
