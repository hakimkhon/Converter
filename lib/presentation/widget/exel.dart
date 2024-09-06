import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';

class Exel extends StatelessWidget {
  const Exel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.bgBody,
      child: Center(child: Text(
        'Exel Page',
        style: TextStyle(
          fontSize: 36,
          color: Colors.red[900],
          fontWeight: FontWeight.bold,
        ),
      ),),
    );
  }
}