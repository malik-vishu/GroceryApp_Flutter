import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/navigation.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme:
              const IconThemeData(color: MyThemes.headingBlueColor, size: 32),
          title: "ShadowBox".text.xl4.color(MyThemes.headingBlueColor).make(),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
            elevation: 2,
            onPressed: () {},
            backgroundColor: Colors.blue[400],
            child: const Icon(
              CupertinoIcons.cart,
            )),
      ),
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
      height: 220,
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
              // height: 200,
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
                    children: [
                      const Icon(
                        Icons.currency_rupee_rounded,
                        color: MyThemes.purple,
                      ),
                      "10.00".text.xl2.bold.color(MyThemes.purple).make()
                    ],
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
