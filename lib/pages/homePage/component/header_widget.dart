import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String subtitle;

  final String title;

  final int time;

  const Header({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          tooltip: 'Close',
          onPressed: () {
            // handle the press
          },
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  subtitle + " - ",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Text(
                  time.toString() + " mins",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
