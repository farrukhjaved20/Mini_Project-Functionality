import 'package:flutter/material.dart';

class CategoryMenuScreen extends StatelessWidget {
  final List categoryItems;

  const CategoryMenuScreen({super.key, required this.categoryItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categoryItems[index]['name']),
            subtitle: Text('Price: \$${categoryItems[index]['price']}'),
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
