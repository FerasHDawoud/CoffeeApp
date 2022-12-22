// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImportImage extends StatelessWidget {
  final String imageName;
  final double height_;
  final double width_;
  final double radius;
  const ImportImage({
    super.key,
    required this.imageName,
    required this.height_,
    required this.width_,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height_,
      width: width_,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageName),
          ),
          borderRadius: BorderRadius.circular(radius)),
    );
  }
}
