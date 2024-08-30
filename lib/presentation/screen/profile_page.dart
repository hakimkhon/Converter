import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'Profile Page',
      style: TextStyle(
        fontSize: 36,
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
    ),);
  }
}