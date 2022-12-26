import 'package:coffee/modules/Item_Details/Item_Details_Modules/items_list.dart';
import 'package:coffee/utils/import_image.dart';
import 'package:flutter/cupertino.dart';

class ItemQuantity extends StatelessWidget {
  const ItemQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImportImage(
          imageName: ItemsList.items[0].image,
          height: 20,
          width: 20,
          radius: 10,
        )
      ],
    );
  }
}
