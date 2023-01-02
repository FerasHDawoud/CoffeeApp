// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:coffee/utils/app_colors.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text;
  var onTop;
  Box({super.key, required this.text, this.onTop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
          border: Border.all(color: APPCOLORS.primaryTextColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextTemplet(
              text_: text,
              fontColor_: APPCOLORS.primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
