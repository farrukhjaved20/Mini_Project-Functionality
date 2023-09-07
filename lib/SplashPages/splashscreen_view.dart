// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:grocery_app/SplashPages/widgets/onboard1_view.dart';
import 'package:grocery_app/SplashPages/widgets/onboard2_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;

  final List<Widget> _pages = [const OnBoardOneView(), const OnBoardTwoView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //STack because to Overlap Pages
      body: Stack(children: [
        PageView.builder(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemCount: _pages.length,
          itemBuilder: (context, index) {
            return _pages[index % _pages.length];
          },
        )
      ]),
    );
  }
}
