import 'package:flutter/material.dart';
import 'package:for_sample/data/core/constant/consts.dart';
import 'package:for_sample/data/core/resource/assets_path.dart';
import 'package:for_sample/data/routes/app_routes.dart';
import 'package:for_sample/presentation/widget/open_file_btn.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Pdf extends StatelessWidget {
  const Pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBody,
      body: Column(
        children: [
          Expanded(
            child: ZoomTapAnimation(
              onTap: () {
                Navigator.pushNamed(context, MyRouteNames.openPdf);
              },
              child: Image.asset(ImageAssets.bg, width: 80,),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.all(ConstSizes.width(5, context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Recent files',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: MyColors.btnColor,
                            ),
                            child: ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: ((context, index) {
                                  return ListTile(
                                    leading: Image.asset(ImageAssets.pdfIcon),
                                    title: const Text(
                                      'Filename',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      'Path to file',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.cancel,
                                          color: Colors.white,
                                        )),
                                  );
                                }),
                                separatorBuilder: ((context, index) =>
                                    const Divider(
                                      color: Colors.white,
                                    )),
                                itemCount: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OpenFileBtn(
                        title: "Create file",
                        onTap: () {},
                      ),
                      OpenFileBtn(
                        title: "Open file",
                        onTap: () {},
                      ),
                      OpenFileBtn(
                        title: "My file",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // void openFile(PlatformFile file) {
  //   OpenFile.open(file.path!);
  // }
}
