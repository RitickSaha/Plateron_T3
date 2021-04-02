import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'meals_model.dart';

class MenuItems {
  String head;
  List<Meals> mealslist;
  MenuItems({
    @required this.head,
    @required this.mealslist,
  });

  MenuItems copyWith({
    String head,
    List<Meals> mealslist,
  }) {
    return MenuItems(
      head: head ?? this.head,
      mealslist: mealslist ?? this.mealslist,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'head': head,
      'mealslist': mealslist?.map((x) => x.toMap())?.toList(),
    };
  }

  factory MenuItems.fromMap(Map<String, dynamic> map) {
    return MenuItems(
      head: map['head'],
      mealslist:
          List<Meals>.from(map['mealslist']?.map((x) => Meals.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuItems.fromJson(String source) =>
      MenuItems.fromMap(json.decode(source));

  @override
  String toString() => 'MenuItems(head: $head, mealslist: $mealslist)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MenuItems &&
        other.head == head &&
        listEquals(other.mealslist, mealslist);
  }

  @override
  int get hashCode => head.hashCode ^ mealslist.hashCode;
}
