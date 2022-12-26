import 'package:coffee/modules/Item_Details/Item_Details_Modules/items_list.dart';
import 'package:coffee/modules/Order_Summary/Order_Summary_Modules/line_of_text.dart';
import 'package:coffee/utils/background_image.dart';
import 'package:coffee/utils/top_container.dart';
import 'package:flutter/material.dart';

import '../../utils/APP_COLORS.dart';
import '../../utils/custom_button.dart';
import 'Order_Summary_Modules/item_quantity.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgrounImage(
      child: Stack(
        children: [
          TopContainer(
            titele: "Order Summary",
            containerHight: 0.24,
            leftBottonText: "< Back",
            onPressedLeftText: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.79,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: const BoxDecoration(
                      color: APPCOLORS.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13.0),
                        topLeft: Radius.circular(13.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          LineOfText(
                              text: "Subtotal",
                              price: ItemsList.items[0].price),
                          const LineOfText(text: "Delivery", price: "30 \$"),
                          const Divider(thickness: 2),
                          const LineOfText(
                            text: "Total",
                            price: "30 \$",
                            size: 22,
                          ),
                          // const ItemQuantity(),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomButton(text: "Checkout", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
