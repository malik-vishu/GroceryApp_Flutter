import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/navig.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<bool> _onWillPop() async {
    return await Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NavigationWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: MyThemes.purple,
        body: Column(children: [
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      shape: BoxShape.rectangle,
                      gradient: const RadialGradient(colors: [
                        Color(0xFFFCC368),
                        Color(0xFF9BFCA5),
                        Color(0xFFA4ECFC)
                      ])),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/Mini1.png"),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
            child: SizedBox(
              height: 450,
              child: Row(
                children: [
                  SizedBox(
                    width: 370,
                    child: Column(
                      children: [
                        ProfileListWidget(
                            title: "Username:\t\t john_12",
                            leadingIcon: CupertinoIcons.person_alt_circle),
                        ProfileListWidget(
                            title: "History",
                            leadingIcon: CupertinoIcons.clock),
                        ProfileListWidget(
                            title: "Wallet",
                            leadingIcon: CupertinoIcons.creditcard),
                        ProfileListWidget(
                            title: "Log Out",
                            leadingIcon: CupertinoIcons.person_alt_circle),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ProfileListWidget extends StatelessWidget {
  ProfileListWidget({
    super.key,
    required this.title,
    required this.leadingIcon,
  });
  final IconData leadingIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Icon(
              leadingIcon,
              color: MyThemes.lightYellow,
              size: 32.0,
            ),
            title: title.text
                .hexColor(MyThemes.lightYellowHex)
                .fontFamily(MyThemes.headingFonts)
                .size(25)
                .bold
                .make()),
      ],
    );
  }
}
