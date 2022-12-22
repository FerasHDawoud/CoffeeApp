// ignore_for_file:  file_names
import 'package:coffee/utils/APP_COLORS.dart';
import 'package:coffee/utils/BackgroundImage.dart';
import 'package:coffee/utils/ImportImage.dart';
import 'package:coffee/utils/TextTemplet.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return BackgrounImage(
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
          Container(
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
                    height_: mediaQueryHeight * 0.18,
                    width_: double.infinity),
                const TextTemplet(text_: "S I N C E  1 9 8 9", size_: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
