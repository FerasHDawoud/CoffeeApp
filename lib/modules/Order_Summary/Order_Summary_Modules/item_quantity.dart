import 'package:coffee/modules/Item_Details/Item_Details_Modules/items_list.dart';
import 'package:coffee/modules/Order_Summary/Order_Summary_Modules/box.dart';
import 'package:coffee/utils/app_colors.dart';
import 'package:coffee/utils/import_image.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class ItemQuantity extends StatelessWidget {
  final int cartIndex;
  const ItemQuantity({super.key, required this.cartIndex});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<Cart>(context, listen: false);
    var itemInCart = ItemsList.items[myProvider.cart[cartIndex].itemNum];
    if (myProvider.cart.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImportImage(
              imageName: itemInCart.image,
              height: 70,
              width: 70,
              radius: 20,
            ),
            Column(
              children: [
                TextTemplet(
                  text_: itemInCart.name,
                  fontColor_: APPCOLORS.primaryTextColor,
                  fontWeight: FontWeight.bold,
                  size_: 18,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Box(
                      text: "+",
                      onTop: () {
                        myProvider.incrementQuantity(cartIndex);
                        myProvider.subTotal();
                        myProvider.total_();
                      },
                    ),
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: Center(
                        child: TextTemplet(
                          text_: myProvider.cart[cartIndex].quantity.toString(),
                          fontColor_: APPCOLORS.primaryTextColor,
                          size_: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Box(
                      text: "-",
                      onTop: () {
                        if (myProvider.cart[cartIndex].quantity > 0) {
                          myProvider.decrementQuantity(cartIndex);
                          myProvider.subTotal();
                          myProvider.total_();
                        }
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    } else {
      return const Center(
        child: TextTemplet(
          text_: "Your cart is empty.",
          fontColor_: APPCOLORS.primaryTextColor,
          size_: 18,
        ),
      );
    }
  }
}
