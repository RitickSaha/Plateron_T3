import 'package:flutter/material.dart';
import 'package:pleteron_task3/models/meals_model.dart';

import 'addtocart_widget.dart';

class MenuWidget extends StatefulWidget {
  final Meals e;
  const MenuWidget({Key key, this.e}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.e.added > 0 ? Color(0xFFF8894B).withOpacity(0.10) : null,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
      child: Row(
        children: [
          Image.asset(
            // "assets/menu_demos/demo2.jpeg",
            "assets/menu_demos/${widget.e.asset}.jpeg",
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  strutStyle: StrutStyle(fontSize: 12.0),
                  maxLines: 1,
                  text: TextSpan(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    text: widget.e.name,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "\$" + widget.e.price.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF8894B),
                        fontFamily: "bold"),
                  ),
                  if (widget.e.added > 0)
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Add Notes",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5BBFF8),
                            fontFamily: "bold"),
                      ),
                    ),
                  if (widget.e.added == 0)
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.info_rounded,
                        size: 18,
                        color: Color(0xFF757373),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Spacer(),
          Addtocart(meal: widget.e, superRebuild: rebuild),
        ],
      ),
    );
  }
}
