import 'package:flutter/material.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(ImageAssets.imageName),
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Hello World!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.indigoAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
