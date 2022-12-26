// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:coffee/utils/app_colors.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  double? buttonWidth;
  double? buttonHeight;
  final Color bottonColor;
  final Color bottonTextColor;
  var onPressed;

  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonWidth,
    this.buttonHeight,
    this.bottonColor = APPCOLORS.primaryColor,
    this.bottonTextColor = APPCOLORS.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? MediaQuery.of(context).size.width * 0.7,
      height: buttonHeight ?? 40,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: bottonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          child: TextTemplet(
            text_: text,
            size_: 18,
            fontColor_: bottonTextColor,
          )),
    );
  }
}
