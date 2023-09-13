import 'package:flutter/material.dart';
import 'package:grocery_app/View/Home_Screen/Widget/home_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeWidgets(),
        ],
      ),
    );
  }
}
