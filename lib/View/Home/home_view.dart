import 'package:flutter/material.dart';
import 'package:grocery_app/constant/Colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageindex = 0;
  //List<Widget> pages = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      pageindex = index;
    });
  }

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
          currentIndex: pageindex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
