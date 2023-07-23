import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: MyThemes.purple,
      animationDuration: Duration(milliseconds: 3000),
      duration: Duration(milliseconds: 4000),
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: Center(
        child: "ShadowBox"
            .text
            .headline2(context)
            .color(MyThemes.lightYellow)
            .make(),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      defaultNextScreen: LoginScreen(),
    );
  }
}
