import 'package:flutter/material.dart';
import 'package:for_sample/presentation/page/home/home_page.dart';
import 'package:for_sample/presentation/page/splash/splash_page.dart';
import 'package:for_sample/presentation/screen/open_pdf_file.dart';

class MyRouteNames {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String openPdf = '/openPdf';

}

class MyRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case MyRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case MyRouteNames.openPdf:
        return MaterialPageRoute(builder: (context) => const OpenPdfFile());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}