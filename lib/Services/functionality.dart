import 'package:flutter/material.dart';

class Functionality {
  int currentIndex = 0;
  //List<Widget> pages = <Widget>[];
  void onItemTapped(int index) {
    currentIndex = index;
  }
}
