import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/const_sizes.dart';

class Invoys extends StatelessWidget {
  const Invoys({super.key});

  @override
  Widget build(BuildContext context) {
    final textUtkazmaMiqdori = TextEditingController();
    final textJunatuvchiKartasi = TextEditingController();
    final textQabulqiluvchiKartasi = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ConstSizes.width(4, context)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: ConstSizes.height(3, context),
            ),
            child: Text(
              'To\'lov malumotlarini kiriting!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          myFunc(context, "O'tkazma miqdori", textUtkazmaMiqdori),
          myFunc(context, "Jo'natuvchi kartasi", textJunatuvchiKartasi),
          myFunc(context, "Qabul qiluvchi kartasi", textQabulqiluvchiKartasi),
        ],
      ),
    );
  }

  Widget myFunc(context, String title, TextEditingController name) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ConstSizes.width(5, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title:',
            style: TextStyle(
              fontSize: 22,
              color: Colors.blue[900],
              fontWeight: FontWeight.w500,
            )
          ),
          SizedBox(
            width: ConstSizes.width(5, context),
          ),
          Expanded(
            child: TextField(
              controller: name,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                hintText: "raqam kiriting",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}