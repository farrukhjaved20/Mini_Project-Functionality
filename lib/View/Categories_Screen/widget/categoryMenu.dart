import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';

class CategoryMenuScreen extends StatefulWidget {
  final List items;

  const CategoryMenuScreen({super.key, required this.items});

  @override
  State<CategoryMenuScreen> createState() => _CategoryMenuScreenState();
}

class _CategoryMenuScreenState extends State<CategoryMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.items[index]['name']),
            subtitle: Text('Price: \$${widget.items[index]['price']}'),
            trailing: TextButton(
              onPressed: () async {
                if (cartItems.any((CartItems) =>
                    CartItems.name == widget.items[index]['name'])) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Item already in cart'),
                    ),
                  );
                } else {
                  cartItems.add(CartItem(
                      name: widget.items[index]['name'],
                      price: widget.items[index]['price'].toDouble()));
                }

                setState(() {});
              },
              child: const Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }
}
