import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool clicked = false;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SearchBar(
        onChanged: (value) {
          if (value.isNotEmpty) {
            clicked = true;
          }
          if (value.isEmptyOrNull) {
            clicked = false;
          }
          setState(() {});
        },
        controller: _searchController,
        // constraints: const BoxConstraints(maxWidth: 260, minWidth: 140),
        textStyle: const MaterialStatePropertyAll(
            TextStyle(color: MyThemes.lightYellow, fontSize: 18)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(6))),
        elevation: const MaterialStatePropertyAll(1),
        backgroundColor:
            const MaterialStatePropertyAll(MyThemes.searchBarColor),
        leading: const Icon(
          Icons.search,
          color: MyThemes.lightYellow,
        ),
        hintText: "Search",
        hintStyle: const MaterialStatePropertyAll(
            TextStyle(color: MyThemes.lightYellow)),
        trailing: [
          clicked
              ? IconButton(
                  icon: const Icon(CupertinoIcons.clear_circled),
                  onPressed: () {
                    _searchController.clear();
                    clicked = false;
                    setState(() {});
                  },
                )
              : Container(),
        ]);
  }
}
