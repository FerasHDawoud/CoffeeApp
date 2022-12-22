// ignore_for_file: file_names, prefer_typing_uninitialized_variables, avoid_init_to_null, must_be_immutable

import 'package:flutter/material.dart';

import 'APP_COLORS.dart';

class BackgrounImage extends StatelessWidget {
  var child;
  BackgrounImage({super.key, this.child = null});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPCOLORS.secondaryColor,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: child,
      ),
    );
  }
}
