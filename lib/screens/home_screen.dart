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
        iconTheme: const IconThemeData(color: MyThemes.lightYellow, size: 32),
        title: const SearchBarWidget(),
        backgroundColor: MyThemes.purple,
        elevation: 0.0,
      ),
      body: VxScrollVertical(
        child: <Widget>[
          "Fruits"
              .text
              .fontFamily(MyThemes.headingFonts)
              .xl3
              .color(MyThemes.headingBlueColor)
              .make()
              .py16(),
          const RowOnHomeScreen(),
          "Vegetables"
              .text
              .fontFamily(MyThemes.headingFonts)
              .xl3
              .color(MyThemes.headingBlueColor)
              .make()
              .py16(),
          const RowOnHomeScreen(),
          "Dairy"
              .text
              .fontFamily(MyThemes.headingFonts)
              .xl3
              .color(MyThemes.headingBlueColor)
              .make()
              .py16(),
          const RowOnHomeScreen(),
        ].vStack(),
      ),
      drawer: const DrawerWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
          elevation: 3,
          onPressed: () {},
          backgroundColor: MyThemes.cardButtonColor,
          child: const Icon(
            CupertinoIcons.cart,
          )),
    );
  }
}

class RowOnHomeScreen extends StatelessWidget {
  const RowOnHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CardWidgetHomeScreen();
        },
      ),
    );
  }
}

class CardWidgetHomeScreen extends StatelessWidget {
  const CardWidgetHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 2, 0),
        child: Card(
          color: MyThemes.lightYellow,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 140,
              height: 200,
              decoration: BoxDecoration(
                color: MyThemes.cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(8, 6.5, 8, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Milk.png"),
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  "Text".text.purple700.xl2.semiBold.make(),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: MyThemes.cardButtonColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(3)),
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              size: 25,
                              color: MyThemes.cardIconColor,
                            )),
                      ),
                      "1".text.color(MyThemes.purple).semiBold.xl2.make(),
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: MyThemes.cardButtonColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(3)),
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 25,
                              color: MyThemes.cardIconColor,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
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
            decoration: const BoxDecoration(
                border: BorderDirectional(
              bottom: BorderSide(color: MyThemes.lightYellow, width: 1),
            )),
            margin: const EdgeInsets.all(0),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: MyThemes.purple,
              ),
              margin: EdgeInsets.zero,
              accountName: "John"
                  .text
                  .lineHeight(2.9)
                  .xl3
                  .extraBold
                  .fontFamily(MyThemes.headingFonts)
                  .hexColor("FFD8DB27")
                  .make(),
              accountEmail: "johnxx@gmail.com"
                  .text
                  .fontFamily(MyThemes.headingFonts)
                  .xl
                  .hexColor("FFD8DB27")
                  .make(),
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
            title: "johnxxx@gmail.com",
            leadingIcon: Icons.mail_outline_rounded),
        ListTileWidget(
            title: "Wallet", leadingIcon: Icons.currency_rupee_sharp),
        ListTileWidget(
          title: "Transaction History",
          leadingIcon: Icons.history,
        ),
        ListTileWidget(
          title: "About",
          leadingIcon: Icons.person_pin_outlined,
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
        constraints: const BoxConstraints(maxWidth: 260, minWidth: 140),
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
            title: title.text
                .hexColor(MyThemes.lightYellowHex)
                .fontFamily(MyThemes.headingFonts)
                .lg
                .make()),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Divider(
            color: MyThemes.lightYellow,
            thickness: 0.6,
          ),
        )
      ],
    );
  }
}
