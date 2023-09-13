import 'package:flutter/material.dart';

import 'package:grocery_app/View/Home_Screen/Widget/home_widgets.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/strings.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            const HomeWidgets()
          ],
        ),
      ),
    );
  }
}
