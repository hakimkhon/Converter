import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/presentation/widget/exel.dart';
import 'package:for_sample/presentation/widget/invoys.dart';
import 'package:for_sample/presentation/widget/pdf.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // leading: const Icon(
          //   Icons.sort_rounded,
          //   color: Colors.black87,
          // ),
          centerTitle: true,
          backgroundColor: MyColors.bgColor,
          bottom: const TabBar(
            // indicatorPadding: EdgeInsets.all(2),
            labelPadding: EdgeInsets.all(10),
            indicatorWeight: 5,
            indicatorColor: Color.fromARGB(255, 9, 21, 107),
            dividerColor: MyColors.bgColor,
            tabs: [
              Text('Invoys', style: TextStyle(fontSize: 24)),
              Text('Pdf', style: TextStyle(fontSize: 24)),
              Text('Exsel', style: TextStyle(fontSize: 24)),
            ],
          ),
          title: Text(
            'Kerakli bo\'limni tanlang',
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Invoys(),
            Pdf(),
            Exel(),
          ],
        ),
      ),
    );
  }
}
