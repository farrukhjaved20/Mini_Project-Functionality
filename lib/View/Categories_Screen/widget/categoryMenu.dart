import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/constant/colors.dart';

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
        title: const Text("Cart's Menu"),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.items[index]['name']),
            subtitle: Text('Price: \$${widget.items[index]['price']}'),
            trailing: IconButton(
              onPressed: () async {
                if (cartItems.contains(widget.items[index])) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Item already in cart'),
                    ),
                  );
                } else {
                  cartItems.add(widget.items[index]);
                }

                setState(() {});
              },
              icon: Icon(
                Icons.add,
                color: MyColors.primaryColor,
                size: 30,
              ),
            ),
          );
        },
      ),
    );
  }
}
