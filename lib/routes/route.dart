import 'package:flutter/material.dart';
import 'package:grocery_app/SplashPages/splashscreen_view.dart';
import 'package:grocery_app/SplashPages/widgets/onboard1_view.dart';
import 'package:grocery_app/SplashPages/widgets/onboard2_view.dart';
import 'package:grocery_app/routes/routename.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
       case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteName.onboard1:
        return MaterialPageRoute(
          builder: (context) => const OnBoardOneView(),
        );
      case RouteName.onboard2:
        return MaterialPageRoute(
          builder: (context) => const OnBoardTwoView(),
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
