import 'package:flutter/material.dart';
import 'package:for_sample/presentation/widget/invoys.dart';
import 'package:for_sample/presentation/widget/pdf.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  int currentIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: PageView(
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              controller: pageController,
              children: const [
                Pdf(),
                Invoys(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
