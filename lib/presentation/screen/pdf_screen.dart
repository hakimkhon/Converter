import 'package:flutter/material.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';
import 'package:pdfx/pdfx.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  // int currentIndex = 0;
  // final pageController = PageController();
  // static const int initialPage = 1;
  late PdfControllerPinch pdfControllerPinch;
  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdf/ibodati_islomiya.pdf'),
      // initialPage: initialPage,
    );
  }

  // @override
  // void dispose() {
  //   pdfControllerPinch.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'FileName',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_before),
            onPressed: () {
              pdfControllerPinch.previousPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
          ),
          // PdfPageNumber(
          //   controller: pdfController,
          //   builder: (_, loadingState, pageNumber, totalPages) => Overlay()(
          //     alignment:
          //   )
          // ),
        ],
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _pdfView(),
        ),
      ],
    );
  }

  Widget _pdfView() {
    return Expanded(
      child: PdfViewPinch(controller: pdfControllerPinch),
    );
  }
}
