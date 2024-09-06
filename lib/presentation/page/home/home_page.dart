import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/presentation/screen/pdf_screen.dart';
import 'package:for_sample/presentation/widget/currency.dart';
import 'package:for_sample/presentation/widget/translate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = const [
    Currency(),
    PdfScreen(),
    Translate(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: MyColors.bgColor),
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.bgColor,
        currentIndex: currentIndex,
        selectedItemColor: MyColors.selectedItemColor,
        unselectedItemColor: MyColors.bgDarkColor,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange, size: 36),
            label: "Currency",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.picture_as_pdf, size: 36),
            label: "PDF",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.translate_sharp, size: 36),
            label: "Translate",
          ),
        ],
      ),
    );
  }
}
