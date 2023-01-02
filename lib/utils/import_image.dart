import 'package:flutter/material.dart';

class ImportImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final double radius;
  const ImportImage({
    super.key,
    required this.imageName,
    required this.height,
    required this.width,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageName),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(radius)),
    );
  }
}
