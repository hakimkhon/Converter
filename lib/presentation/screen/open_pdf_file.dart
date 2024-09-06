import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';
import 'package:pdfx/pdfx.dart';

class OpenPdfFile extends StatefulWidget {
  const OpenPdfFile({super.key});

  @override
  State<OpenPdfFile> createState() => _OpenPdfFileState();
}

class _OpenPdfFileState extends State<OpenPdfFile> {
  late PdfController pdfController;
  loadController() {
    pdfController =
        PdfController(document: PdfDocument.openAsset(PdfAssets.kitob));
    Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loadController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.bgColor,
        title: const Text(
          'FileName',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              pdfController.pagesCount == null
                  ? ""
                  : "Pages ${pdfController.page}/${pdfController.pagesCount}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.brown,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: PdfView(controller: pdfController),
        ),
      ),
    );
  }
}
