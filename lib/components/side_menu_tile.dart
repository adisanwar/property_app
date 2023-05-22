import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        // Stack(
        //   children: [
        //     AnimatedPositioned(
        //       duration: const Duration(milliseconds: 300),
        //       height: 50,
        //       width: double.infinity,
        //       left: 0,
        //       child: Container(
        //         decoration: const BoxDecoration(
        //           color: Color(0xFF6792FF),
        //           borderRadius: BorderRadius.all(Radius.circular(10)),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Dashboard",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              CupertinoIcons.map,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Site Plan",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              CupertinoIcons.chart_bar,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Marketing",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              CupertinoIcons.money_dollar,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Keuangan",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
          child: Text("Browse".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white70)),
        ),
      ],
    );
  }
}
