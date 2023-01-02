import 'package:coffee/modules/Checkout/checkout.dart';

import 'package:coffee/modules/Order_Summary/Order_Summary_Modules/line_of_text.dart';
import 'package:coffee/utils/background_image.dart';
import 'package:coffee/utils/top_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/APP_COLORS.dart';
import '../../utils/custom_button.dart';
import 'Order_Summary_Modules/cart.dart';
import 'Order_Summary_Modules/item_quantity.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<Cart>(context, listen: false);

    return SafeArea(
      child: BackgrounImage(
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
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Consumer<Cart>(
                                  builder: (context, value, child) {
                                    return LineOfText(
                                        text: "Subtotal",
                                        price: value.sum.toString());
                                  },
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                const LineOfText(
                                    text: "Delivery", price: "3 \$"),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                const Divider(thickness: 2),
                                LineOfText(
                                  text: "Total",
                                  price: myProvider.total.toString(),
                                  size: 22,
                                ),
                              ],
                            ),
                            Expanded(
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.42,
                                child: SingleChildScrollView(
                                  child: Column(
                                      children: List.generate(
                                          myProvider.cart.length, (index) {
                                    return Consumer<Cart>(
                                      builder: ((context, value, child) {
                                        return ItemQuantity(cartIndex: index);
                                      }),
                                    );
                                  })),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                      text: "Checkout",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Checkout()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
