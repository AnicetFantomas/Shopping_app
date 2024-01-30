import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other,
}

class CategoryItem {
  const CategoryItem(this.name, this.color);
  
  final String name;
  final Color color;
}