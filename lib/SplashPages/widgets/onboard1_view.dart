import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/constant/Colors.dart';
import 'package:grocery_app/constant/images.dart';
import 'package:grocery_app/routes/routename.dart';
import 'package:grocery_app/widgets/roundbutton.dart';

import '../../constant/Strings.dart';

class OnBoardOneView extends StatelessWidget {
  const OnBoardOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your holiday\nshopping\ndelivered to Screen\none    🏕️  ',
                      style: ManropeFont.getMediumStyle(
                          fontSize: 30, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        "There's something for everyone\nto enjoy with Sweet Shop\nFavourites Screen 1",
                        style: ManropeFont.getRegularStyle(
                            color: MyColors.textgray, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: DotsIndicator(
                        dotsCount: 2,
                        position: 0,
                        decorator: DotsDecorator(
                          activeSize: const Size(59.0, 7.0),
                          activeColor: Colors.white,
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Image(image: AssetImage(Images.twoperson)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 80, bottom: 10),
              child: CustomButton(
                title: 'Get Started',
                onTap: () {
                  Navigator.pushNamed(context, RouteName.onboard2);
                },
              ),
            )
          ]),
    );
  }
}
