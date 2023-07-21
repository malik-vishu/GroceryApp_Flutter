import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:grocery_app/utils/all_routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData.dark(),
      initialRoute: AllRoutes.login,
      routes: {
        AllRoutes.login: (context) => LoginScreen(),
        AllRoutes.home: (context) => HomeScreen(),
      },
    );
  }
}
