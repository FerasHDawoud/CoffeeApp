import 'package:flutter/material.dart';

import '../../utils/APP_COLORS.dart';
import '../../utils/TopContainer.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
        child: Column(
          children: [
            TopContainer(
              titele: "Menu",
              leftBottonText: "< Back",
              onPressedLeftText: () {
                Navigator.pop(context);
              },
              rightBottonText: "View Order\nSummary >",
              onPressedRighitText: () {},
            ),
          ],
        ),
      ),
    );
  }
}
