import 'package:coffee/modules/Menu/Menu_Modules/Item.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopContainer(
                titele: "Menu",
                leftBottonText: "< Back",
                onPressedLeftText: () {
                  Navigator.pop(context);
                },
                rightBottonText: "View Order >\nSummary",
                onPressedRighitText: () {},
              ),
              Column(
                children: const [
                  Item(
                      imageName: "assets/images/americano.png",
                      itemName: "AMERICANO",
                      price: "3 \$"),
                  Item(
                      imageName: "assets/images/cafe-latte 2.png",
                      itemName: "CAFE LATTE",
                      price: "1.5 \$"),
                  Item(
                      imageName: "assets/images/cafe-mocha 2.png",
                      itemName: "CAFE MOCHA",
                      price: "2 \$"),
                  Item(
                      imageName: "assets/images/espresso 2.png",
                      itemName: "ESPRESSO",
                      price: "1.5 \$"),
                  Item(
                      imageName: "assets/images/organic-coffee 2.png",
                      itemName: "ORGANIC COFFEE",
                      price: "1.5 \$"),
                  Item(
                      imageName: "assets/images/espresso 2.png",
                      itemName: "ESPRESSO",
                      price: "1.5 \$"),
                  Item(
                      imageName: "assets/images/pizza-round 1.png",
                      itemName: "PIZZA",
                      price: "3 \$"),
                  Item(
                      imageName: "assets/images/club-sandwich-round 1.png",
                      itemName: "CLUB SANDWICH",
                      price: "3 \$"),
                  Item(
                      imageName: "assets/images/criossant-round 1.png",
                      itemName: "CROISSANT",
                      price: "1.5 \$"),
                  Item(
                      imageName: "assets/images/waffles-round 1.png",
                      itemName: "WAFFLES",
                      price: "1.5 \$"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
