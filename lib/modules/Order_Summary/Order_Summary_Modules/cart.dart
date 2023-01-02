import 'package:coffee/modules/Order_Summary/Order_Summary_Modules/item_quantity_data.dart';
import 'package:flutter/cupertino.dart';

import '../../Item_Details/Item_Details_Modules/items_list.dart';

class Cart extends ChangeNotifier {
  List<ItemQuantityData> cart = [];
  double sum = 0;
  double total = 0;
  addTOCart(ItemQuantityData iq) {
    cart.add(iq);
    notifyListeners();
  }

  getCartItem(index) {
    return cart[index].itemNum;
  }

  incrementQuantity(index) {
    cart[index].quantity++;

    notifyListeners();
  }

  decrementQuantity(index) {
    cart[index].quantity--;
    notifyListeners();
  }

  subTotal() {
    sum = 0;
    for (var i in cart) {
      sum = (ItemsList.items[i.itemNum].price * i.quantity) + sum;
    }
    notifyListeners();
  }

  total_() {
    total = sum + 3;
    notifyListeners();
  }
}
