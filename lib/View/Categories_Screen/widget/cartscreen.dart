import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/constant/strings.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                cartItems[index];
                return ListTile(
                  title: Text(cartItems[index].name),
                  subtitle: Text(
                      'Price: \$${cartItems[index].price.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          if (cartItems[index].quantity > 1) {
                            setState(() {
                              cartItems[index].quantity--;
                            });
                          } else {
                            setState(() {
                              cartItems.removeAt(index);
                            });
                          }
                        },
                      ),
                      Text(cartItems[index].quantity.toString()),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            cartItems[index].quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
