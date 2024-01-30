import 'package:flutter/material.dart';
import 'package:shpping_app/data/dummy_items.dart';
import 'package:shpping_app/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryList> _groceryItems = [];

  void _addItem() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your grocery list'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
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