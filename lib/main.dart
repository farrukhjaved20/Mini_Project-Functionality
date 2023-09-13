import 'package:flutter/material.dart';
import 'package:grocery_app/routes/route.dart';
import 'package:grocery_app/routes/routename.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: RouteName.customBottom,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
