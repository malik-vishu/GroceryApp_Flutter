import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E2AEB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFD8DB27), size: 32),
        title: SearchBarWidget(),
        backgroundColor: const Color(0xFF8E2AEB),
        elevation: 0.0,
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
      backgroundColor: const Color(0xFF8E2AEB),
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: const BoxDecoration(
                border: BorderDirectional(
              bottom: BorderSide(color: Color(0xFFD8DB27), width: 1),
            )),
            margin: const EdgeInsets.all(0),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF8E2AEB),
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
                  border: Border.all(color: const Color(0xFFD8DB27)),
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
        textStyle: const MaterialStatePropertyAll(
            TextStyle(color: Color(0xFFD8DB27), fontSize: 18)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(6))),
        elevation: const MaterialStatePropertyAll(1),
        backgroundColor:
            const MaterialStatePropertyAll(Color.fromARGB(255, 152, 64, 234)),
        leading: const Icon(
          Icons.search,
          color: Color(0xFFD8DB27),
        ),
        hintText: "Search",
        hintStyle:
            const MaterialStatePropertyAll(TextStyle(color: Color(0xFFD8DB27))),
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
              color: const Color(0xFFD8DB27),
              size: 34.0,
            ),
            title: title.text.hexColor("FFD8DB27").lg.make()),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Divider(
            color: Color(0xFFD8DB27),
            thickness: 0.6,
          ),
        )
      ],
    );
  }
}
