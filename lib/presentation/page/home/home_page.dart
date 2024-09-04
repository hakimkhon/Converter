import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:for_sample/presentation/screen/pdf_screen.dart';
import 'package:for_sample/presentation/widget/currency.dart';
import 'package:for_sample/presentation/widget/exel.dart';
import 'package:for_sample/presentation/widget/invoys.dart';
import 'package:for_sample/presentation/widget/translate.dart';
import 'package:open_file/open_file.dart';

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
    Invoys(),
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
        onTap: (value) async {
          currentIndex = value;
          // PageController().animateToPage(
          //   value,
          //   duration: const Duration(milliseconds: 200),
          //   curve: Curves.easeOut,
          // );
          if (value == 2)  {
            debugPrint("PDF ochilishi kerak");
            final result = await FilePicker.platform.pickFiles(
              allowMultiple: true,
              type: FileType.custom,
              allowedExtensions: ['pdf'],
            );
            if (result == null) return;

            final file = result.files.first;
            openFile(file);
          }
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
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner, size: 36),
            label: "Invoys",
          ),
        ],
      ),
    );
  }
   void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
