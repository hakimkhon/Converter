import 'package:flutter/material.dart';

class Translate extends StatelessWidget {
  const Translate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'Translate Page',
      style: TextStyle(
        fontSize: 36,
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
    ),);
  }
}