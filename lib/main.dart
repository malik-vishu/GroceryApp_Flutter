import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:grocery_app/screens/profile_screen.dart';
import 'package:grocery_app/screens/search_screen.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/screens/wallet_screen.dart';
import 'package:grocery_app/utils/all_routes.dart';
import 'package:grocery_app/widgets/navig.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pangolin'),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        AllRoutes.login: (context) => LoginScreen(),
        AllRoutes.home: (context) => HomeScreen(),
        AllRoutes.profile: (context) => ProfileScreen(),
        AllRoutes.search: (context) => SearchScreen(),
        AllRoutes.wallet: (context) => WalletScreen(),
        AllRoutes.nav: (context) => const NavigationWidget(),
      },
    );
  }
}
