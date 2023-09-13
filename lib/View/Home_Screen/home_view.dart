import 'package:flutter/material.dart';
import 'package:grocery_app/Services/functionality.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/strings.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Functionality functionality = Functionality();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: height * 0.25,
              width: width * 1,
              color: MyColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hey,Halal',
                            style: ManropeFont.getSemiStyle(
                                fontSize: 22, color: Colors.white)),
                        const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Container(
                            height: 50,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                                color: MyColors.secondaryColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.search, color: Colors.white),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    'Search Products or store',
                                    style: TextStyle(color: MyColors.textgray),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, top: 20, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'DELIVERY TO',
                            style: TextStyle(color: MyColors.textgray),
                          ),
                          Text(
                            'WITHIN',
                            style: TextStyle(color: MyColors.textgray),
                          )
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Green Way 3000, Sylhet ▼',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '1 Hour ▼',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 300,
                    child: Card(
                      color: MyColors.goldenColor,
                      clipBehavior: Clip.antiAlias,
                      shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Center(
                          child: Text(
                        'Get\n50% OFF\nOn First 3 Order',
                        style: ManropeFont.getSemiStyle(
                            fontSize: 22, color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 300,
                    child: Card(
                      color: const Color.fromARGB(255, 177, 160, 111),
                      clipBehavior: Clip.antiAlias,
                      shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Center(
                          child: Text(
                        'Get\n30% OFF\nOn First 2 Order',
                        style: ManropeFont.getSemiStyle(
                            fontSize: 22, color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Recommended',
                  style: ManropeFont.getRegularStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            )
            
          ],
        ),
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
      ),
    );
  }
}
