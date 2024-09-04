import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  // static const int initialPage = 1;
  // late PdfControllerPinch pdfController;
  // @override
  // void initState() {
  //   super.initState();
  //   pdfController = PdfControllerPinch(
  //     document: PdfDocument.openFile('filePath'),
  //     initialPage: initialPage,
  //   );
  // }

  // @override
  // void dispose() {
  //   pdfController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles(
              allowMultiple: true,
              type: FileType.custom,
              allowedExtensions: ['pdf'],
            );
            if (result == null) return;

            final file = result.files.first;
            openFile(file);
          },
          child: const Center(
            // child: Text(
            //   'PDF fayl yuklash',
            //   style: TextStyle(
            //     fontSize: 24,
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
        )
      ],
    );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
