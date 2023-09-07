import 'package:flutter/material.dart';
import 'package:grocery_app/constant/Strings.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const CustomButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.08,
        width: width * 0.6,
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: ManropeFont.getSemiStyle(fontSize: 17),
            ),
            const Icon(
              Icons.arrow_forward,
              size: 28,
            )
          ],
        )),
      ),
    );
  }
}
