import 'package:flutter/material.dart';
import 'package:pleteron_task3/models/menu_items_model.dart';

import 'component/mealWidget.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({
    Key key,
    @required this.menuItem,
  }) : super(key: key);

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Row(
          children: [
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItem.head,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "bold",
                  ),
                ),
                Row(
                  children: [
                    Text(
                      menuItem.mealslist.length.toString() + " items",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        initiallyExpanded: menuItem.head == "Appetizer",
        children: menuItem.mealslist.map<Widget>((e) {
          return MenuWidget(e: e);
        }).toList());
  }
}
