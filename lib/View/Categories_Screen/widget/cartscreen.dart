import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/constant/strings.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: cartItems.isEmpty
              ? const Text('No Data')
              : const Text('Cart Screen')),
      body: cartItems.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]['name']),
                  subtitle: Text('Price: \$${cartItems[index]['price']}'),
                );
              },
            ),
    );
  }
}
