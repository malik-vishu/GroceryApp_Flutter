import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.purple,
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyThemes.lightYellow, size: 32),
        title: const SearchBarWidget(),
        backgroundColor: MyThemes.purple,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: MyThemes.lightYellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 135,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 243, 191),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(8, 6.5, 8, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Placeholder(
                            fallbackHeight: 60,
                            fallbackWidth: 50,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          "Text".text.purple700.xl2.semiBold.make(),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(30)),
                                child: IconButton(
                                    style: ButtonStyle(
                                        elevation: MaterialStatePropertyAll(3)),
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      size: 25,
                                      color: Vx.purple700,
                                    )),
                              ),
                              "1".text.purple700.xl.make(),
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(30)),
                                child: IconButton(
                                    style: ButtonStyle(
                                        elevation: MaterialStatePropertyAll(3)),
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 25,
                                      color: Vx.purple700,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      drawer: const DrawerWidget(),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyThemes.purple,
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: BoxDecoration(
                border: BorderDirectional(
              bottom: BorderSide(color: MyThemes.lightYellow, width: 1),
            )),
            margin: const EdgeInsets.all(0),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: MyThemes.purple,
              ),
              margin: EdgeInsets.zero,
              accountName: "Vishu"
                  .text
                  .lineHeight(3.5)
                  .xl2
                  .bold
                  .hexColor("FFD8DB27")
                  .make(),
              accountEmail:
                  "vishuxx@gmail.com".text.lg.hexColor("FFD8DB27").make(),
              currentAccountPicture: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: MyThemes.lightYellow),
                  //borderRadius: BorderRadius.circular(30)
                ),
                child: const CircleAvatar(
                    minRadius: 30,
                    maxRadius: 70,
                    backgroundImage: AssetImage("assets/images/Mini1.png")),
              ),
            )),
        ListTileWidget(title: "Home", leadingIcon: Icons.home_outlined),
        ListTileWidget(
            title: "vishuxxx@gmail.com",
            leadingIcon: Icons.mail_outline_rounded),
        ListTileWidget(
            title: "Wallet", leadingIcon: Icons.currency_rupee_sharp),
        ListTileWidget(
          title: "Transaction History",
          leadingIcon: Icons.history,
        ),
      ]),
    );
  }
}

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
        textStyle: MaterialStatePropertyAll(
            TextStyle(color: MyThemes.lightYellow, fontSize: 18)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(6))),
        elevation: const MaterialStatePropertyAll(1),
        backgroundColor: MaterialStatePropertyAll(MyThemes.searchBarColor),
        leading: Icon(
          Icons.search,
          color: MyThemes.lightYellow,
        ),
        hintText: "Search",
        hintStyle:
            MaterialStatePropertyAll(TextStyle(color: MyThemes.lightYellow)),
        trailing: [
          clicked
              ? IconButton(
                  icon: const Icon(Icons.clear),
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

class ListTileWidget extends StatelessWidget {
  ListTileWidget({
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
              size: 34.0,
            ),
            title: title.text.hexColor("FFD8DB27").lg.make()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Divider(
            color: MyThemes.lightYellow,
            thickness: 0.6,
          ),
        )
      ],
    );
  }
}
