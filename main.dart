import 'package:class11a/bottomnav.dart';
import 'package:flutter/material.dart';

// At top of main.dart
import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Demo11aBottomNav());
  }
}

class Demo11a extends StatefulWidget {
  const Demo11a({super.key});

  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("Week 11B Demo"),
          backgroundColor: Colors.amber[700],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.red,
            //   child: Center(child: Text("Page 1")),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.yellow,
            //   child: Center(child: Text("Page 2")),
            // ),
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.purple,
            //   child: Center(child: Text("Page 3")),
            // ),
            PageHome(),
            PageSearch(),
            PageSettings(),
          ],
        ),
      ),
    );
  }
}
