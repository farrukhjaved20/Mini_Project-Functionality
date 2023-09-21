import 'package:flutter/material.dart';
import 'package:grocery_app/SplashPages/splashscreen_view.dart';
import 'package:grocery_app/View/Categories_Screen/widget/cartscreen.dart';
import 'package:grocery_app/View/Categories_Screen/widget/checkout.dart';
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
      case RouteName.cartScreen:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
 case RouteName.checkout:
        return MaterialPageRoute(
          builder: (context) => const CheckOut(),
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
