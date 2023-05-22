import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:property_app/components/info_card.dart';
import 'package:property_app/components/side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 288,
          height: double.infinity,
          color: Color(0xFF17203A),
          child: SafeArea(
            child: Column(
              children: [
                InfoCard(
                  name: "Budi",
                  profession: "Marketing",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                  child: Text("Browse".toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white70)),
                ),
                SideMenuTile()
              ],
            ),
          )),
    );
  }
}
