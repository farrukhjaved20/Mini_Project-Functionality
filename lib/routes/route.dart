import 'package:flutter/material.dart';
import 'package:grocery_app/View/Home/home_view.dart';

import 'package:grocery_app/routes/routename.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      // case RouteName.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeScreen(),
      //   );
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('No route Defined')),
          );
        });
    }
  }
}
