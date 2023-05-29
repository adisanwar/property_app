import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;
  bool isMarketingExpanded =
      true; // Menyimpan status submenu Marketing terbuka atau tidak
  bool isMenuOpen = false;
  List<String> marketingSubmenuItems = [
    "Campaigns",
    "Analytics",
    "Leads",
  ];
  // ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(9.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 24.0,
                          child: Icon(
                            CupertinoIcons.person,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Uzumaki Naruto",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Dashboard",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.map,
                            color: Colors.white,
                          ),
                        ),
                        ExpansionTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.bar_chart,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Marketing",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ExpansionTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.bar_chart,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Marketing",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          children: marketingSubmenuItems.map((String item) {
                            return ListTile(
                              onTap: () {
                                // Aksi yang akan dijalankan ketika submenu di-tap
                                // Contoh: Navigasi ke halaman terkait
                                print("Menu '$item' di-tap");
                              },

                              // leading: Icon(
                              //   // Icons.arrow_forward,
                              //   color: Colors.white,
                              // ),
                              title: Text(
                                item,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Pengaturan",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          // GestureDetector(
          //   onTap: () {
          //     if (isMenuOpen) {
          //       setState(() {
          //         isMenuOpen =
          //             false; // Menutup menu ketika di ketuk di area body
          //       });
          //     }
          //   },
          // ),
          TweenAnimationBuilder(
            tween: Tween<double>(
                begin: 0,
                end: isMenuOpen ? 1 : 0), // Menggunakan nilai isMenuOpen
            duration: Duration(milliseconds: 500),
            builder: (_, double val, __) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                  appBar: AppBar(
                    leading: InkWell(
                      // Tambahkan InkWell sebagai tombol menu
                      onTap: () {
                        setState(() {
                          isMenuOpen =
                              !isMenuOpen; // Toggle status menu terbuka atau tidak
                        });
                      },
                      child: Icon(
                        Icons.menu,
                      ),
                    ),
                    title: Text("Dashboard"),
                  ),
                  body: Center(
                    child: Text("Swipe right to Open Menu"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
