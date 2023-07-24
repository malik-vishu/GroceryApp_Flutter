import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:chip_list/chip_list.dart';
import '../widgets/themes.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});

  bool _isNumeric(String? result) {
    if (result == null) {
      return false;
    }
    return double.tryParse(result) != null;
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.purple,
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                CupertinoIcons.creditcard,
                size: 60,
                color: MyThemes.lightYellow,
              ),
              const SizedBox(
                width: 12,
              ),
              "Wallet"
                  .text
                  .headline2(context)
                  .center
                  .bold
                  .color(MyThemes.lightYellow)
                  .make(),
            ],
          ).pLTRB(15, 0, 0, 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5, 15, 5),
            child: Form(
              key: formKey,
              child: TextFormField(
                validator: (value) {
                  if (value != null && value != "" && !_isNumeric(value)) {
                    return 'Please enter a valid amount';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  if (formKey.currentState!.validate()) {}
                },
                cursorColor: MyThemes.lightYellow,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: MyThemes.lightYellow,
                  fontSize: 30,
                ),
                decoration: const InputDecoration(
                    focusedErrorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: MyThemes.headingBlueColor)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: MyThemes.headingBlueColor)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: MyThemes.lightYellow),
                    ),
                    errorStyle: TextStyle(
                      color: MyThemes.headingBlueColor,
                      fontSize: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.currency_rupee_rounded,
                      color: MyThemes.lightYellow,
                      size: 30,
                    ),
                    helperText: "Add Amount",
                    helperStyle: TextStyle(
                      color: MyThemes.lightYellow,
                      fontSize: 20,
                    ),
                    hintText: "1000",
                    hintStyle: TextStyle(
                      color: MyThemes.lightYellow,
                    )),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 18),
              child: ChipListWidget(walletchipsList: const [
                "5000",
                "2000",
                "1000",
                "500",
                "200",
                "100",
              ])),
          Row(
            children: [
              "Current Balance"
                  .text
                  .semiBold
                  .headline3(context)
                  .color(MyThemes.lightYellow)
                  .make()
                  .px12(),
              const Icon(
                CupertinoIcons.arrow_right_circle,
                color: MyThemes.lightYellow,
                size: 42,
              )
            ],
          ),
          "5000.0"
              .text
              .semiBold
              .headline4(context)
              .color(MyThemes.headingBlueColor)
              .make()
              .px12()
        ],
      ).pLTRB(0, 80, 0, 0),
    );
  }
}

class ChipListWidget extends StatefulWidget {
  ChipListWidget({
    super.key,
    required this.walletchipsList,
  });

  final List<String> walletchipsList;
  @override
  State<ChipListWidget> createState() => _ChipListWidgetState();
}

class _ChipListWidgetState extends State<ChipListWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChipList(
      shouldWrap: true,
      runSpacing: 5,
      style: const TextStyle(fontSize: 18),
      padding: const EdgeInsets.all(5),
      widgetSpacing: 5,
      listOfChipNames: widget.walletchipsList,
      activeBgColorList: [MyThemes.searchBarColor],
      inactiveBgColorList: const [MyThemes.searchBarColor],
      activeTextColorList: const [MyThemes.lightYellow],
      inactiveTextColorList: [MyThemes.headingBlueColor],
      listOfChipIndicesCurrentlySeclected: [currentIndex],
      activeBorderColorList: [MyThemes.lightYellow],
      inactiveBorderColorList: const [MyThemes.headingBlueColor],
      extraOnToggle: (val) {
        currentIndex = val;
        setState(() {});
      },
    );
  }
}
