import 'package:coffee/modules/Menu/menu.dart';
import 'package:coffee/utils/import_image.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/background_image.dart';
import '../../utils/text_templet.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: BackgrounImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: mediaQueryHeight * 0.08,
            ),
            const Text(
              "latte",
              style: TextStyle(
                  fontFamily: 'Montez',
                  color: APPCOLORS.primaryColor,
                  fontSize: 96),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
              child: Container(
                width: double.infinity,
                height: mediaQueryHeight * 0.55,
                decoration: const BoxDecoration(
                  color: APPCOLORS.primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImportImage(
                        imageName: "assets/images/coffee main logo.png",
                        height: mediaQueryHeight * 0.18,
                        width: MediaQuery.of(context).size.width * 0.4),
                    const TextTemplet(text_: "S I N C E  1 9 8 9", size_: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
