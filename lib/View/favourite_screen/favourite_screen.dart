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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favourite Items',
        ),
      ),
      body: ListView.builder(
        itemCount: FavouriteList.FavItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: SizedBox(
              height: height * 0.05,
              child: Card(
                shadowColor: MyColors.textgray,
                elevation: 5,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  FavouriteList.FavItem[index]['name'],
                  style: ManropeFont.getMediumBoldStyle(
                      color: Colors.red, fontSize: 24),
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
