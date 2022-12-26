import 'package:coffee/utils/APP_COLORS.dart';
import 'package:coffee/utils/import_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/text_templet.dart';

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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ImportImage(
              imageName: imageName,
              height: 110,
              width: 110,
              radius: 100,
            ),
          ),
          Container(
            height: 50,
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
                      size_: 18,
                    ),
                    TextTemplet(
                      text_: price,
                      fontWeight: FontWeight.bold,
                      size_: 18,
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
