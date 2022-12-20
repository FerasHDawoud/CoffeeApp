// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'APP_COLORS.dart';

class TextTemplet extends StatelessWidget {
  final String text_;
  final double size_;
  final Color fontColor_;
  final FontWeight fontWeight;
  const TextTemplet(
      {super.key,
      required this.text_,
      required this.size_,
      this.fontColor_ = APPCOLORS.secondaryColor,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text_,
      style: TextStyle(
          color: fontColor_,
          fontFamily: "ligconsolata",
          fontSize: size_,
          fontWeight: fontWeight),
    );
  }
}
