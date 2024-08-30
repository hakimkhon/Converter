import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Pdf extends StatelessWidget {
  const Pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles();
          },
          child: const Center(
            child: Text(
              'PDF fayl yuklash',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
