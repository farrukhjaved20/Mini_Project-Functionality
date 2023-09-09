import 'package:flutter/material.dart';
import 'package:grocery_app/Services/functionality.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Functionality functionality = Functionality();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(children: []),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz_sharp,
              ),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: functionality.currentIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: (value) {
            setState(() {
              functionality.onItemTapped(value);
            });
          },
          elevation: 5),
    );
  }
}
