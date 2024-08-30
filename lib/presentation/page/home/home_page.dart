import 'package:flutter/material.dart';
import 'package:for_sample/presentation/screen/pdf_screen.dart';
import 'package:for_sample/presentation/widget/currency.dart';
import 'package:for_sample/presentation/widget/exel.dart';
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
    Exel(),
    PdfScreen(),
    Translate(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (value) {
          currentIndex = value;
          // PageController().animateToPage(
          //   value,
          //   duration: const Duration(milliseconds: 200),
          //   curve: Curves.easeOut,
          // );
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange, size: 36),
            label: "Currency",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description, size: 36),
            label: "Exel",
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
