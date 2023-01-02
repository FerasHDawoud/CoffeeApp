import 'package:coffee/modules/Item_Details/Item_Details_Modules/items_list.dart';
import 'package:coffee/modules/Menu/Menu_Modules/item.dart';
import 'package:coffee/modules/Order_Summary/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/background_image.dart';
import '../../utils/top_container.dart';
import '../Order_Summary/Order_Summary_Modules/cart.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    var items = ItemsList.items;
    var myProvider = Provider.of<Cart>(context, listen: false);
    return SafeArea(
      child: BackgrounImage(
        child: Column(children: [
          TopContainer(
            titele: "Menu",
            leftBottonText: "< Back",
            onPressedLeftText: () {
              Navigator.pop(context);
            },
            rightBottonText: "View Order >\nSummary",
            onPressedRighitText: () {
              myProvider.subTotal();
              myProvider.total_();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderSummary()),
              );
            },
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(9, (index) {
                    return Item(
                      imageName: items[index].image,
                      itemName: items[index].name,
                      price: "${items[index].price.toString()} \$",
                      itemIndex: index,
                    );
                  }),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
