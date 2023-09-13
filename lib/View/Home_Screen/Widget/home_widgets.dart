import 'package:flutter/material.dart';
import 'package:grocery_app/Model/listdata.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/Strings.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodData[0]['Recommended'].length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        foodData[0]['Recommended'][index]['image'],
                        fit: BoxFit.fill,
                        height: 190,
                        width: 500,
                      ),
                      Text(foodData[0]['Recommended'][index]['name']),
                      Text(foodData[0]['Recommended'][index]['category']),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            foodData[0]['Recommended'][index]['price'],
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
