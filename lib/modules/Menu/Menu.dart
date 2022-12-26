import 'package:coffee/modules/Menu/Menu_Modules/item.dart';
import 'package:flutter/material.dart';
import '../../utils/background_image.dart';
import '../../utils/top_container.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgrounImage(
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
                    imageName: "assets/images/americano 1.png",
                    itemName: "AMERICANO",
                    price: "3 \$"),
                Item(
                    imageName: "assets/images/coffe latte 1.png",
                    itemName: "CAFE LATTE",
                    price: "1.5 \$"),
                Item(
                    imageName: "assets/images/cafe mocha.png",
                    itemName: "CAFE MOCHA",
                    price: "2 \$"),
                Item(
                    imageName: "assets/images/espresso.png",
                    itemName: "ESPRESSO",
                    price: "1.5 \$"),
                Item(
                    imageName: "assets/images/organic coffee 1.png",
                    itemName: "ORGANIC COFFEE",
                    price: "1.5 \$"),
                Item(
                    imageName: "assets/images/pizza 1.png",
                    itemName: "PIZZA",
                    price: "3 \$"),
                Item(
                    imageName: "assets/images/club sandwich 1.png",
                    itemName: "CLUB SANDWICH",
                    price: "3 \$"),
                Item(
                    imageName: "assets/images/criossant 1.png",
                    itemName: "CROISSANT",
                    price: "1.5 \$"),
                Item(
                    imageName: "assets/images/waffles 1.png",
                    itemName: "WAFFLES",
                    price: "1.5 \$"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
