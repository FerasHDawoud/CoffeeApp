// ignore_for_file:  file_names
import 'package:coffee/utils/APP_COLORS.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

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
          ),
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            const Text(
              "latte",
              style: TextStyle(
                  fontFamily: 'Montez',
                  color: APPCOLORS.primaryColor,
                  fontSize: 90),
            ),
          ],
        ),
      ),
    );
  }
}
