import 'package:flutter/material.dart';
import 'package:grocery_app/Services/functionality.dart';
import 'package:grocery_app/View/Categories_Screen/categories.dart';
import 'package:grocery_app/View/Home_Screen/home_view.dart';
import 'package:grocery_app/View/favourite_screen/favourite_screen.dart';
import 'package:grocery_app/View/logut_screen/logout_screen.dart';

class CustomBottom extends StatefulWidget {
  const CustomBottom({super.key});

  @override
  State<CustomBottom> createState() => _CustomBottomState();
}

class _CustomBottomState extends State<CustomBottom> {
  Functionality functionality = Functionality();
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };
  final List<Widget> pages = [
    const HomeView(),
    const CategoriesView(),
    const FavouriteView(),
    const LogoutView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildNavigator(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
            label: 'More',
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
      ),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[functionality.currentIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) => pages.elementAt(functionality.currentIndex));
      },
    );
  }
}
