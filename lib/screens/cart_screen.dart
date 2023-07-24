import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.purple,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Cart"
              .text
              .color(MyThemes.lightYellow)
              .start
              .headline3(context)
              .make()
              .p20(),
          Row(
            children: [
              Icon(
                Icons.currency_rupee_rounded,
                color: MyThemes.lightYellow,
              )
            ],
          )
        ],
      ),
    );
  }
}
