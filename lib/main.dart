import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:grocery_app/utils/all_routes.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AllRoutes.home,
      routes: {
        '/': (context) => LoginScreen(),
        AllRoutes.home: (_) => HomeScreen(),
      },
    );
  }
}
