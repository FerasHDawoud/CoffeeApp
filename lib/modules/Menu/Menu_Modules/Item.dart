// ignore_for_file: file_names

import 'package:coffee/utils/APP_COLORS.dart';
import 'package:coffee/utils/ImportImage.dart';
import 'package:coffee/utils/TextTemplet.dart';
import 'package:flutter/cupertino.dart';

class Item extends StatelessWidget {
  final String imageName;
  final String itemName;
  final String price;
  const Item(
      {super.key,
      required this.imageName,
      required this.itemName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          ImportImage(
            imageName: imageName,
            height_: 130,
            width_: 130,
            radius: 100,
          ),
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: const BoxDecoration(
                color: APPCOLORS.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextTemplet(
                      text_: itemName,
                      fontWeight: FontWeight.bold,
                      size_: 20,
                    ),
                    TextTemplet(
                      text_: price,
                      fontWeight: FontWeight.bold,
                      size_: 20,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
