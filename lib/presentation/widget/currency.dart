import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.bgColor),
      body: Container(
        color: MyColors.bgColor,
        child: const Center(
          child: Text(
            'Currency Page',
            style: TextStyle(
              fontSize: 36,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
