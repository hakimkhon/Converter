import 'dart:async';

import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';
import 'package:for_sample/data/routes/app_routes.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        MyRouteNames.home,
        (predicate) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgDarkColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Lottie.asset(LottieAssets.lottieName),
        ),
      ),
    );
  }
}
