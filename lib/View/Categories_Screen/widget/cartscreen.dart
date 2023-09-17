import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/constant/strings.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalAmount = 0.0;

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
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          if (cartItems[index]['quantity'] != 0) {
                            cartItems[index]['quantity']--;
                            if (cartItems[index]['quantity'] == 0) {
                              cartItems.removeAt(index);
                            }
                            setState(() {});
                          }
                        },
                      ),
                      Text(cartItems[index]['quantity'].toString()),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            if (cartItems[index]['quantity'] != 0) {
                              setState(() {
                                cartItems[index]['quantity']++;
                              });
                            }
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(bottom: 30.0, left: 20, right: 30),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Total: \$${totalAmount.toStringAsFixed(2)}', // Format the total amount
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
