import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/strings.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalAmount = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalamount();
  }

  void totalamount() {
    totalAmount = 0.0;
    for (var money in cartItems) {
      totalAmount += money['price'] * money['quantity'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: cartItems.isEmpty
              ? const Text('No Items In The Cart')
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
                            totalamount();
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
                              cartItems[index]['quantity']++;
                              totalamount();
                              setState(() {});
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColors.goldenColor),
          child: Center(
            child: Text(
              'Total: \$${totalAmount.toStringAsFixed(2)}',
              style: ManropeFont.getMediumStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: MyColors.primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
