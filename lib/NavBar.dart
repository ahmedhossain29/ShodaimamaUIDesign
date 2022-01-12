import 'package:flutter/material.dart';
import 'package:cool_nav/cool_nav.dart';
import 'package:shodaimamaui/Color.dart';
import 'package:shodaimamaui/FreshPage.dart';
import 'package:shodaimamaui/HomePage.dart';
import 'package:shodaimamaui/Navigation.dart';
import 'package:shodaimamaui/PreorderPage.dart';
import 'package:shodaimamaui/RegularPage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var currentIndex = 0;
  final Pages = [
    HomePage(),
    FreshPage(),
    RegularPage(),
    PreorderPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Container(
                width: 70,
                height: 60,
                color: AppColor.MyColor,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.home,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title: Padding(padding: EdgeInsets.only())),
        BottomNavigationBarItem(
            icon: Container(
              child: Row(
                children: [
                  Text(
                    "Fresh",
                    style: TextStyle(fontSize: 17),
                  ),
                  Container(
                    width: 5,
                  ),
                ],
              ),
            ),
            title: Padding(padding: EdgeInsets.all(0))),
        BottomNavigationBarItem(
            icon: Container(
              child: Row(
                children: [
                  Text("Regular", style: TextStyle(fontSize: 17)),
                  Container(
                    width: 5,
                    color: AppColor.MyColor,
                  )
                ],
              ),
            ),
            title: Padding(padding: EdgeInsets.all(0))),
        BottomNavigationBarItem(
            icon: Container(
              child: Row(
                children: [
                  Text("Preorder", style: TextStyle(fontSize: 17)),
                  Container(
                    width: 5,
                    color: AppColor.MyColor,
                  )
                ],
              ),
            ),
            title: Padding(padding: EdgeInsets.all(0))),
      ]),
      body: Pages[currentIndex],
    );
  }
}
