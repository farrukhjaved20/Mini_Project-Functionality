import 'package:flutter/material.dart';

class CategoryMenuScreen extends StatelessWidget {
  final List items;

  const CategoryMenuScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['name']),
            subtitle: Text('Price: \$${items[index]['price']}'),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }
}
