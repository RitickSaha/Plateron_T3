import 'package:flutter/material.dart';
import 'package:pleteron_task3/pages/homePage/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PLATERON TASK-3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        title: 'Slice Shabu',
        subtitle: "Hunginton Beach",
        time: 20,
      ),
    );
  }
}