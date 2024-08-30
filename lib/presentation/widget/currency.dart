import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Currency Page',
        style: TextStyle(
          fontSize: 36,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
