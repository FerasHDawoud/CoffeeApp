import 'package:coffee/modules/starting_page/starting_page.dart';
import 'package:coffee/utils/app_colors.dart';
import 'package:coffee/utils/custom_button.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Order_Summary/Order_Summary_Modules/cart.dart';

class OrderReceved extends StatelessWidget {
  const OrderReceved({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: APPCOLORS.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.check_circle_rounded,
                size: 100,
                color: Colors.white,
              ),
              Column(
                children: const [
                  TextTemplet(
                    text_: "Order Receved",
                    fontWeight: FontWeight.bold,
                    size_: 24,
                  ),
                  TextTemplet(
                    text_: "Your order was placed successfully!",
                    size_: 18,
                  ),
                ],
              ),
              CustomButton(
                text: "Home",
                onPressed: () {
                  Provider.of<Cart>(context, listen: false).cart.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StartingPage()),
                  );
                },
                bottonColor: APPCOLORS.secondaryColor,
                bottonTextColor: APPCOLORS.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
