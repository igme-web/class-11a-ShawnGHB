import 'package:class11a/page_home.dart';
import 'package:class11a/page_profile.dart';
import 'package:class11a/page_search.dart';
import 'package:class11a/page_settings.dart';
import 'package:flutter/material.dart';

class Demo11aBottomNav extends StatefulWidget {
  const Demo11aBottomNav({super.key});

  @override
  State<Demo11aBottomNav> createState() => _Demo11aBottomNavState();
}

class _Demo11aBottomNavState extends State<Demo11aBottomNav> {
  @override
  int currentBottomTab = 0;

  final List<Widget> bottomNavScreens = [
    PageHome(),
    PageSearch(),
    PageSettings(),
    PageProfile(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Demo")),
      // To:
      body: IndexedStack(index: currentBottomTab, children: bottomNavScreens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentBottomTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.purple,
          ),
        ],
        onTap: (value) {
          setState(() {
            currentBottomTab = value;
          });
        },
      ),
    );
  }
}
