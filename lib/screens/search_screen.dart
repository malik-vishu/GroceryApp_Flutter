import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/searchbar.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:chip_list/chip_list.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBarWidget(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: MyThemes.lightYellow),
      ),
      backgroundColor: MyThemes.purple,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              CupertinoIcons.clock,
              color: MyThemes.lightYellow,
            ).px8(),
            "History".text.color(MyThemes.lightYellow).size(20).semiBold.make(),
          ]).py16(),
          ChipListWidget().p16(),
        ],
      ),
    );
  }
}

class ChipListWidget extends StatefulWidget {
  ChipListWidget({
    super.key,
  });

  @override
  State<ChipListWidget> createState() => _ChipListWidgetState();
}

class _ChipListWidgetState extends State<ChipListWidget> {
  final List<String> _historyList = [
    'Milk',
    'Egg',
    'Biscuits',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChipList(
      style: TextStyle(fontSize: 18),
      padding: EdgeInsets.all(5),
      widgetSpacing: 5,
      listOfChipNames: _historyList,
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
