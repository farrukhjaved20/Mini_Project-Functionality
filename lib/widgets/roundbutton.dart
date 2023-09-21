import 'package:flutter/material.dart';
import 'package:grocery_app/constant/Strings.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? color;
  final IconData? icon;
  final Function()? onTap;
  const CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      this.icon,
      required this.color});

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
            color: color,
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
            Icon(icon)
          ],
        )),
      ),
    );
  }
}
