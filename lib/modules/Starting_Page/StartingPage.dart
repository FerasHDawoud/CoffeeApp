// ignore_for_file:  file_names
import 'package:coffee/utils/APP_COLORS.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPCOLORS.secondaryColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SvgPicture.asset("assets/icons/latte.svg"),
      ),
    );
  }
}
