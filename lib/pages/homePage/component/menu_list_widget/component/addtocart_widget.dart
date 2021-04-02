
import 'package:flutter/material.dart';
import 'package:pleteron_task3/models/meals_model.dart';

class Addtocart extends StatefulWidget {
  final Meals meal;
  final Function() superRebuild;
  Addtocart({
    Key key,
    @required this.meal,
    this.superRebuild,
  }) : super(key: key);
  @override
  _AddtocartState createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var e = widget.meal;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: widget.meal.added == 0
                  ? Border.all(color: Colors.grey.shade500, width: 0.8)
                  : null,
              color: widget.meal.added > 0 ? Colors.white : null,
            ),
            child: Center(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (e.added == 0)
                  Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade500,
                    ),
                  ),
                if (e.added > 0)
                  InkWell(
                    onTap: () {
                      setState(() {
                        e.added--;
                      });
                      widget.superRebuild();
                    },
                    child: Icon(
                      Icons.remove,
                      color: Color(0xFFF8894B),
                    ),
                  ),
                if (e.added > 0)
                  Text(
                    "${e.added}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF8894B),
                    ),
                  ),
                InkWell(
                  onTap: () {
                    setState(() {
                      e.added++;
                    });
                    widget.superRebuild();
                  },
                  child: Icon(
                    Icons.add,
                    color: Color(0xFFF8894B),
                  ),
                )
              ],
            )),
          ),
          if (widget.meal.added > 0)
            SizedBox(
              height: 10,
            ),
          if (widget.meal.added > 0)
            Text(
              "Customize",
              style: TextStyle(
                fontSize: 10,
                // fontWeight: FontWeight.w600,
                color: Color(0xFFF8894B),
              ),
            ),
        ],
      ),
    );
  }
}

