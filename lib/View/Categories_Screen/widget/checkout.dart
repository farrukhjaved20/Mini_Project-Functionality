import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: cartItems.isEmpty
              ? const Text('No Orders Placed')
              : const Text('CheckOut Screen')),
      body: cartItems.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green, // Background color is green
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.check_circle, // Success icon
                      color: Colors.white, // Icon color is white
                      size: 64,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your Order was Successfully Completed!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
    );
  }
}
