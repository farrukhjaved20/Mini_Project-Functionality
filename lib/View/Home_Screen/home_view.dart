import 'package:flutter/material.dart';
import 'package:grocery_app/Model/cartitems.dart';
import 'package:grocery_app/Model/favlist.dart';
import 'package:grocery_app/Model/listdata.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/Strings.dart';
import 'package:grocery_app/routes/routename.dart';

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

    return Column(
      children: [
        Container(
          height: height * 0.28,
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
                    Badge(
                      label: Text(cartItems.length.toString()),
                      child: IconButton(
                        onPressed: () async {
                          await Navigator.pushNamed(
                              context, RouteName.cartScreen);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                        height: height * 0.05,
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
                  padding:
                      const EdgeInsets.only(left: 0.0, top: 20, right: 15.0),
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  height: height * 0.15,
                  width: width * 0.95,
                  child: Card(
                    color: MyColors.goldenColor,
                    clipBehavior: Clip.antiAlias,
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.15,
                          width: width * 0.49,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/01/99/21/14/360_F_199211488_Qa6BvQJV2Q8BY6b4jP4Yk0k8Zlo0GN1X.jpg')),
                              shape: BoxShape.rectangle),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Center(
                            child: Text(
                          'Get\n50% OFF\nOn First 3 Order',
                          style: ManropeFont.getSemiStyle(
                              fontSize: 22, color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.15,
                  width: width * 0.95,
                  child: Card(
                    color: const Color.fromARGB(255, 177, 160, 111),
                    clipBehavior: Clip.antiAlias,
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.15,
                          width: width * 0.49,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://static.vecteezy.com/system/resources/previews/005/412/355/non_2x/big-sale-up-to-30-percent-off-all-sale-styles-in-stores-and-online-special-offer-sale-30-percent-number-tag-voucher-illustration-free-vector.jpg'))),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Center(
                            child: Text(
                          'Get\n30% OFF\nOn First 2 Order',
                          style: ManropeFont.getSemiStyle(
                              fontSize: 22, color: Colors.white),
                        )),
                      ],
                    ),
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
              mainAxisSpacing: 10,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                foodData[0]['Recommended'][index]['image']),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(40)),
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
                        icon: Icon(Icons.favorite,
                            color: foodData[0]['Recommended'][index]['isFav']
                                ? Colors.red
                                : Colors.grey),
                        onPressed: () async {
                          if (foodData[0]['Recommended'][index]['isFav'] ==
                              true) {
                            FavouriteList.favItem.remove(
                                foodData[0]['Recommended'][index]);
                          } else {
                            FavouriteList.favItem.add(
                                foodData[0]['Recommended'][index]);
                          }
                          foodData[0]['Recommended'][index]['isFav'] =
                              !foodData[0]['Recommended'][index]['isFav'];
                          setState(() {});
                        },
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
