import 'package:flutter/material.dart';
import '../../../utils/APP_COLORS.dart';
import '../../../utils/text_templet.dart';

class LineOfText extends StatelessWidget {
  final String text;
  final String price;
  final double size;
  const LineOfText(
      {super.key, required this.text, this.size = 16, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextTemplet(
          text_: text,
          fontColor_: APPCOLORS.primaryTextColor,
          fontWeight: FontWeight.bold,
          size_: size,
        ),
        TextTemplet(
          text_: price,
          fontColor_: APPCOLORS.primaryTextColor,
          fontWeight: FontWeight.bold,
          size_: size,
        ),
      ],
    );
  }
}
