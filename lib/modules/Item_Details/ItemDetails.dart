// ignore_for_file: file_names
import 'package:coffee/utils/BackgroundImage.dart';
import 'package:coffee/utils/TopContainer.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

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
            children: [
              // stak have all details
              // secand item is botton
            ],
          )
        ],
      ),
    );
  }
}
