import 'package:flutter/material.dart';
import 'package:grocery_app/constant/colors.dart';
import 'package:grocery_app/constant/strings.dart';

class CategoryMenuScreen extends StatelessWidget {
  const CategoryMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Container(
          height: height * 0.25,
          width: width * 1,
          color: MyColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hey,Halal',
                        style: ManropeFont.getSemiStyle(
                            fontSize: 22, color: Colors.white)),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 30.0),
                          child: Icon(Icons.search, color: Colors.white),
                        ),
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Shop',
                  style: ManropeFont.getLightStyle(
                      fontSize: 50, color: Colors.white),
                ),
                Text(
                  'By Category',
                  style: ManropeFont.getMediumBoldStyle(
                      fontSize: 50, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
