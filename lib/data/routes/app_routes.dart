import 'package:flutter/material.dart';
import 'package:for_sample/presentation/screen/home/home_page.dart';
import 'package:for_sample/presentation/screen/splash/splash_page.dart';

class MyRouteNames {
  static const String home = '/home';
  static const String splash = '/splash';

}

class MyRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case MyRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}