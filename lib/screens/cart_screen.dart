import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.purple,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Cart"
                .text
                .color(MyThemes.lightYellow)
                .start
                .headline3(context)
                .make()
                .pLTRB(18, 20, 15, 25),
            const VxScrollVertical(
                child: SizedBox(
              height: 528,
              child: Column(
                children: [],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                margin: const EdgeInsets.all(5),
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText("Total Amount:\t",
                        maxLines: 1,
                        minFontSize: 20,
                        maxFontSize: 40,
                        stepGranularity: 1,
                        group: myGroup,
                        style: const TextStyle(
                            color: MyThemes.lightYellow, fontSize: 40)),
                    AutoSizeText("Rs.999.00",
                        maxLines: 1,
                        minFontSize: 20,
                        maxFontSize: 40,
                        stepGranularity: 1,
                        group: myGroup,
                        style: const TextStyle(
                            color: MyThemes.headingBlueColor, fontSize: 40)),
                  ],
                ),
              ),
            ),
            OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(5),
                        minimumSize: const Size(380, 45),
                        maximumSize: const Size(500, 60),
                        side: const BorderSide(
                            width: 3.0, color: MyThemes.lightYellow)),
                    onPressed: () {},
                    child: "Checkout"
                        .text
                        .headline5(context)
                        .semiBold
                        .wide
                        .color(MyThemes.lightYellow)
                        .make())
                .pLTRB(14, 2, 11, 5)
          ],
        ),
      ),
    );
  }
}
