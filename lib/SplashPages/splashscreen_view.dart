import 'package:flutter/material.dart';
import 'package:grocery_app/SplashPages/widgets/onboard1_view.dart';
import 'package:grocery_app/SplashPages/widgets/onboard2_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            OnBoardOneView(pageController: controller),
            OnBoardTwoView(pageController: controller,)
          ]),
    );
  }
}
