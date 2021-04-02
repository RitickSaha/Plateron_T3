import 'dart:convert';

import 'package:flutter/material.dart';

class Meals {
  String name;
  double price;
  String asset;
  int added = 0;

  Meals({
    @required this.name,
    @required this.price,
    @required this.asset,
  });

  Meals copyWith({
    String name,
    double price,
    String asset,
  }) {
    return Meals(
      name: name ?? this.name,
      price: price ?? this.price,
      asset: asset ?? this.asset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'asset': asset,
    };
  }

  factory Meals.fromMap(Map<String, dynamic> map) {
    return Meals(
      name: map['name'],
      price: map['price'],
      asset: map['asset'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Meals.fromJson(String source) => Meals.fromMap(json.decode(source));

  @override
  String toString() => 'Meals(name: $name, price: $price, asset: $asset)';
}
