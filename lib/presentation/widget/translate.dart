import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';

class Translate extends StatelessWidget {
  const Translate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.bgColor),
      body: Container(
        color: MyColors.bgBody,
        child: const Center(
          child: Text(
            'Translate Page',
            style: TextStyle(
              fontSize: 36,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
