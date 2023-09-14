import 'package:flutter/material.dart';
import 'package:grocery_app/Model/listdata.dart';
import 'package:grocery_app/View/Categories_Screen/widget/categoryMenu.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/Strings.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
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
                      Text(
                        'Hey,Halal',
                        style: ManropeFont.getSemiStyle(
                            fontSize: 22, color: Colors.white),
                      ),
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
          Expanded(
            child: GridView.builder(
              itemCount: foodData[1]['Category'].length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryMenuScreen(
                                categoryItems: foodData[1]['Category'][index]
                                    ['items'],
                              ),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    foodData[1]['Category'][index]['image'])),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(foodData[1]['Category'][index]['name']),
                          ],
                        ),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
