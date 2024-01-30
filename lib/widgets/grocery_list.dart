import 'package:flutter/material.dart';
import 'package:shpping_app/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your grocery list'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          return ListTile(
            title: Text(item.name),
            leading: Container(
              width: 24,
              height: 24,
              color: item.category.color,
            ),
            trailing: Text('${item.quantity}'),
          );
        },
      ),
    );
  }
}