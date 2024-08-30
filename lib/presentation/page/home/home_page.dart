import 'package:flutter/material.dart';
import 'package:for_sample/presentation/screen/currency_page.dart';
import 'package:for_sample/presentation/screen/exel_page.dart';
import 'package:for_sample/presentation/screen/pdf_page.dart';
import 'package:for_sample/presentation/screen/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = const [
    CurrencyPage(),
    ExelPage(),
    PdfPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Work",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: pages[currentIndex],
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
             icon: Icon(Icons.person, size: 36),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
