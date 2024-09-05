import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OpenFileBtn extends StatelessWidget {
  const OpenFileBtn({
    super.key,
    // required this.path,
    required this.title,
    // required this.color,
    required this.onTap,
  });
  // final String path;
  final String title;
  // final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        margin: const EdgeInsets.only(bottom: 4),
        width: ConstSizes.width(28, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.btnColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.pdfFile,
                width: ConstSizes.width(15, context)),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
