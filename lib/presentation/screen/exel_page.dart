import 'package:flutter/material.dart';

class ExelPage extends StatelessWidget {
  const ExelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      'Exel Page',
      style: TextStyle(
        fontSize: 36,
        color: Colors.red[900],
        fontWeight: FontWeight.bold,
      ),
    ),);
  }
}