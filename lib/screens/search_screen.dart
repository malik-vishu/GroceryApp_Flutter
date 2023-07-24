import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grocery_app/widgets/navigation.dart';
import 'package:grocery_app/widgets/searchbar.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:chip_list/chip_list.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future<bool> _onWillPop() async {
    return await Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NavigationWidget()));
  }

  final List<String> _historyList = [
    'Milk',
    'Egg',
    'Biscuits',
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const SearchBarWidget(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: MyThemes.lightYellow),
        ),
        backgroundColor: MyThemes.purple,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                CupertinoIcons.clock,
                color: MyThemes.lightYellow,
              ).px8(),
              "History"
                  .text
                  .color(MyThemes.lightYellow)
                  .size(20)
                  .semiBold
                  .make(),
            ]).pSymmetric(v: 12),
            ChipListWidget(
              historyList: _historyList,
            ).p16(),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Clear"
                      .text
                      .xl
                      .color(MyThemes.lightYellow)
                      .make()
                      .pLTRB(0, 3, 4, 2),
                  const Icon(
                    CupertinoIcons.clear_circled,
                    color: MyThemes.lightYellow,
                    size: 22,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChipListWidget extends StatefulWidget {
  ChipListWidget({
    super.key,
    required this.historyList,
  });

  final List<String> historyList;
  @override
  State<ChipListWidget> createState() => _ChipListWidgetState();
}

class _ChipListWidgetState extends State<ChipListWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChipList(
      style: const TextStyle(fontSize: 18),
      padding: const EdgeInsets.all(5),
      widgetSpacing: 5,
      listOfChipNames: widget.historyList,
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
