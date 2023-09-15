import 'package:flutter/material.dart';
import 'package:grocery_app/Model/favlist.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/Strings.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Favourite Items',
          style: TextStyle(color: MyColors.secondaryColor),
        ),
      ),
      body: ListView.builder(
        itemCount: FavouriteList.FavItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              FavouriteList.FavItem[index]['name'],
              style: ManropeFont.getMediumBoldStyle(
                  color: MyColors.primaryColor, fontSize: 24),
            ),
            trailing: Container(
                width: width * 0.2,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColors.goldenColor,
                  image: DecorationImage(
                      image: NetworkImage(
                        FavouriteList.FavItem[index]['image'],
                      ),
                      fit: BoxFit.fill),
                )),
          );
        },
      ),
    );
  }
}
