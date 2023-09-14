import 'package:flutter/material.dart';
import 'package:grocery_app/SplashPages/splashscreen_view.dart';
import 'package:grocery_app/View/Categories_Screen/widget/categoryMenu.dart';
import 'package:grocery_app/routes/routename.dart';
import 'package:grocery_app/widgets/Custombottom.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.customBottom:
        return MaterialPageRoute(
          builder: (context) => const CustomBottom(),
        );
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteName.categoryMenu:
        return MaterialPageRoute(
          builder: (context) => const CategoryMenuScreen(items: []),
        );
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('No route Defined')),
          );
        });
    }
  }
}
