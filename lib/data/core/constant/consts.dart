import 'package:flutter/material.dart';

class ConstSizes {
  //The purpose of dividing by 100 is to express it as a percentage
  static double height(double sizeHeight, BuildContext context) {
    return MediaQuery.of(context).size.height * sizeHeight / 100;
  }

  static double width(double sizeWidth, BuildContext context) {
    return MediaQuery.of(context).size.width * sizeWidth / 100;
  }
}

class MyColors {
  static const bgColor = Color.fromARGB(255, 168, 238, 254);
  static const bgBody = Color.fromARGB(250, 160, 238, 254);
  static const bgDarkColor = Color.fromARGB(255, 35, 40, 45);
  static const textColor = Colors.black12;
  static const btnColor = Color.fromARGB(255, 31, 42, 104);
  static const selectedItemColor = Color.fromARGB(255, 160, 10, 10);
}

class ConstUrls {
  static String urlName = "....";
}

TextStyle boldStyle({color = Colors.black87, double? size = 16}) {
  return TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: size);
}
