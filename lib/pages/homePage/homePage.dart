import 'package:flutter/material.dart';
import 'package:pleteron_task3/models/meals_model.dart';
import 'package:pleteron_task3/models/menu_items_model.dart';

import 'component/header_widget.dart';
import 'component/menu_list_widget/menuListWidget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.subtitle, this.time}) : super(key: key);

  final String title;
  final String subtitle;
  final int time;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItems recomended;
  MenuItems apetizer;
  MenuItems mainCourse;
  MenuItems starter;
  List<MenuItems> menuList = [];
  @override
  void initState() {
    // MealsModel();
    recomended = MenuItems(
      head: "Recomended",
      mealslist: [
        Meals(name: "Goat Cheese Trio", price: 12.9, asset: "demo1"),
        Meals(name: "Spiced Olives", price: 30.6, asset: "demo2"),
        Meals(name: "Radish-Anchovy Canapes", price: 56.8, asset: "demo3"),
        Meals(name: "Goat Cheese Trio", price: 12.9, asset: "demo1"),
        Meals(name: "Spiced Olives", price: 30.6, asset: "demo2"),
        Meals(name: "Radish-Anchovy Canapes", price: 56.7, asset: "demo3"),
        Meals(name: "Blue Cheese–Pecan Spread", price: 90.9, asset: "demo4"),
        Meals(name: "Kale-Artichoke Dip", price: 32.9, asset: "demo2"),
        Meals(name: "Radish-Anchovy Canapes", price: 56.8, asset: "demo3"),
        Meals(name: "Blue Cheese–Pecan Spread", price: 90.9, asset: "demo4"),
        Meals(name: "Kale-Artichoke Dip", price: 11.9, asset: "demo2"),
        Meals(name: "Blue Cheese–Pecan Spread", price: 90.9, asset: "demo4"),
        Meals(name: "Kale-Artichoke Dip", price: 10.2, asset: "demo2"),
        Meals(name: "Indian Yogurt Dip", price: 29.9, asset: "demo1"),
      ],
    );
    apetizer = MenuItems(
      head: "Appetizer",
      mealslist: [
        Meals(
            name: "Gorgonzola and Pear Polenta Rounds",
            price: 200,
            asset: "demo1"),
        Meals(name: "Cheddar-Bacon-Pecan Pizza", price: 14.8, asset: "demo2"),
      ],
    );
    apetizer.mealslist[1].added = 1;
    mainCourse = MenuItems(
      head: "Main Course",
      mealslist: [
        Meals(name: "Fried Artichoke Hearts", price: 12.1, asset: "demo1"),
      ],
    );
    starter = MenuItems(
      head: "Starter",
      mealslist: [
        Meals(name: "Spiced Olives", price: 70.8, asset: "demo2"),
        Meals(name: "Radish-Anchovy Canapes", price: 28.1, asset: "demo3"),
        Meals(name: "Blue Cheese–Pecan Spread", price: 90.3, asset: "demo4"),
        Meals(name: "Kale-Artichoke Dip", price: 1.02, asset: "demo2"),
        Meals(name: "Indian Yogurt Dip", price: 27.07, asset: "demo1"),
      ],
    );
    menuList.add(recomended);
    menuList.add(apetizer);
    menuList.add(mainCourse);
    menuList.add(starter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E8D5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3E8D5),
        foregroundColor: Color(0xFFF3E8D5),
        elevation: 0,
        actions: [],
        title: Header(
          time: widget.time,
          title: widget.title,
          subtitle: widget.subtitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          // color: Color(0xFFFEF3E0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    menuList.map((e) => MenuListWidget(menuItem: e)).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
