import 'package:coffee/modules/Item_Details/Item_Details_Modules/items_list.dart';
import 'package:coffee/utils/background_image.dart';
import 'package:coffee/utils/custom_button.dart';
import 'package:coffee/utils/import_image.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/top_container.dart';

class ItemDetails extends StatelessWidget {
  final int itemNum;
  const ItemDetails({super.key, required this.itemNum});
  @override
  Widget build(BuildContext context) {
    return BackgrounImage(
      child: Stack(
        children: [
          TopContainer(
              leftBottonText: "< Back",
              onPressedLeftText: () {
                Navigator.pop(context);
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.79,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: const BoxDecoration(
                    color: APPCOLORS.secondaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13.0),
                      topLeft: Radius.circular(13.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: ImportImage(
                            imageName: ItemsList.items[itemNum].image,
                            height: MediaQuery.of(context).size.height * 0.29,
                            width: MediaQuery.of(context).size.width * 0.65,
                            radius: 18),
                      ),
                      TextTemplet(
                        text_: ItemsList.items[itemNum].name,
                        fontColor_: APPCOLORS.primaryTextColor,
                        size_: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      TextTemplet(
                        text_: ItemsList.items[itemNum].details,
                        fontColor_: APPCOLORS.secondaryTextColor,
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: APPCOLORS.primaryTextColor),
                        ),
                        child: Column(
                          children: [
                            const TextTemplet(
                              text_: "Price: ",
                              fontColor_: APPCOLORS.primaryTextColor,
                            ),
                            TextTemplet(
                              text_: ItemsList.items[itemNum].price,
                              fontColor_: APPCOLORS.primaryTextColor,
                              size_: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(text: "Add To Buy", onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
